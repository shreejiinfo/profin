/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Key.Asset.Controller;

import Key.Asset.Bean.Assetregistrationbean;
import Key.Asset.Dao.assetregistrationdao;
import java.io.File;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author VIKAS
 */
public class Assetregistrationservlet extends HttpServlet {

    private static final String DATA_DIRECTORY = "data";

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uploadFolder = getServletContext().getRealPath("") + File.separator + DATA_DIRECTORY;
        String customFileName = null;
        if (ServletFileUpload.isMultipartContent(request)) {
            Map<String, String> formParameters = new LinkedHashMap<String, String>();
            String filepath = null;
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        File uploadedFolder = new File(uploadFolder);
                        if (!uploadedFolder.exists()) {
                            uploadedFolder.mkdir();
                        }
                        customFileName = UUID.randomUUID().toString().replace("-", "") + fileName;
                        //String filePath = uploadFolder + File.separator + fileName;
                        File uploadedFile = new File(uploadedFolder, customFileName);
                        item.write(uploadedFile);
                        // saves the file to upload directory
                    } else {
                        String fieldName = item.getFieldName();
                        String value = item.getString();
                        formParameters.put(fieldName, value);
                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

            System.out.println("Lbrand = " + formParameters.get("L_Brand"));
            String L_Brand = formParameters.get("L_Brand");
            String L_Type = formParameters.get("L_Type");
            String L_Processor = formParameters.get("L_Processor");
            String L_Color = formParameters.get("L_Color");
            String L_RAM = formParameters.get("L_RAM");
            String L_HDD = formParameters.get("L_HDD");
            String L_Operating_system = formParameters.get("L_Operating_system");
            String L_Speed = formParameters.get("L_Speed");
            String L_Cache = formParameters.get("L_Cache");
            String L_Screen_size = formParameters.get("L_Screen_size");
            String L_Bluetooth = formParameters.get("L_Bluetooth");
            String L_Battery_life = formParameters.get("L_Battery_life");
            String L_Warranty_period = formParameters.get("L_Warranty_period");
            String L_Purchase_date = formParameters.get("L_Purchase_period");
            String L_Price = formParameters.get("L_Price");
            String L_Vendor_name = formParameters.get("L_Vendor_name");

            Assetregistrationbean abean = new Assetregistrationbean();

            abean.setL_Brand(L_Brand);
            abean.setL_Type(L_Type);
            abean.setL_Processor(L_Processor);
            abean.setL_Color(L_Color);
            abean.setL_RAM(L_RAM);
            abean.setL_HDD(L_HDD);
            abean.setL_Operating_system(L_Operating_system);
            abean.setL_Speed(L_Speed);
            abean.setL_Cache(L_Cache);
            abean.setL_Screen_size(L_Screen_size);
            abean.setL_Bluetooth(L_Bluetooth);
            abean.setL_Battery_life(L_Battery_life);
            abean.setL_Warranty_period(L_Warranty_period);
            abean.setL_Purchase_date(L_Purchase_date);
            abean.setL_Price(L_Price);
            abean.setL_Vendor_name(L_Vendor_name);
            abean.setL_Picture(DATA_DIRECTORY + "/" + customFileName);

            boolean flag = assetregistrationdao.areg(abean);
            if (flag) {
                RequestDispatcher rd = request.getRequestDispatcher("electronics.jsp");
                rd.forward(request, response);
            }
        } else {
            System.out.println("Sorry this Servlet only handles file upload request");
        }
    }
}

//***********************************************//
//* Online Examination System                   *//
//*---------------------------------------------*//
//* License: GNU General Public License V.3     *//
//* Author: Manjunath Baddi                     *//
//* Title: Validation                           *//
//***********************************************//
var a,b;               
function isalphanum(ele)
                {
                    var r=/\W$/i;
                    if(r.test(ele.value))
                     {
                         alert("This Field allows Only Alpha Numeric characters.");
                         ele.value="";
                         ele.focus();
                     }
                }
                function isalpha(ele)
                {
                    var r=/[^a-zA-Z]+/i;
                    if(r.test(ele.value))
                     {
                         alert("This Field allows Only Alphabets.");
                         ele.value="";
                         ele.focus();
                     }
                }
                function isnum(ele)
                {
                    var r=/\D$/i;
                    if(r.test(ele.value))
                     {
                         alert("This Field allows Only Numerics.");
                         ele.value="";
                         ele.focus();
                     }
                }

                function validateform(mmyform)
                {
                    var em=/[a-zA-Z0-9]+@[a-zA-Z0-9]+.[a-zA-Z]+/;
                    myform=document.forms[mmyform];
                    if(myform.cname.value=="" || myform.password.value=="" || myform.repass.value=="" || myform.email.value=="" || myform.contactno.value=="" || myform.address.value=="" || myform.city.value=="" || myform.pin.value=="")
                     {
                         alert("Some of the fields are Empty.");
                         return false;
                         //  myform.onsubmit=false;
                     }
                     else if(myform.password.value!=myform.repass.value)
                         {
                             alert("Passwords Donot Match!");
                            // myform.onsubmit=false;
                            return false;
                         }
                         else if(!em.test(myform.email.value))
                             {
                                 alert("Enter the E-mail Correctly!");
                               //  myform.onsubmit=false;
                                 return false;
                             }


                }

                function validatesubform(mmyform)
                {

                    myform=document.forms[mmyform];
                    if(myform.subname.value=="" || myform.subdesc.value=="")
                     {
                         alert("Some of the fields are Empty.");
                         myform.onSubmit=false;
                     }
                     
                }
                function doj(ele)
                {
                     //mmyform=document.forms[myform];
                     a=ele.value;
                   // var dojj=document.getElementByName('joining').value;
                    //var bojj=document.forms[0].birthdate[0].value;
                   // var date1=new Date(dojj);
                   // /var date2=new Date(bojj);
                    //var yr=Math.abs(date1.getYear()-date2.getYear());
                          //alert(a);
                   
                }
                function dob(ele)
                {
                     //mmyform=document.forms[myform];
                     b=ele.value;
                     
                   // var dojj=document.getElementByName('joining').value;
                    //var bojj=document.forms[0].birthdate[0].value;
                  var date1=new Date(a);
                  var date2=new Date(b);
                    var yr=Math.abs(date1.getYear()-date2.getYear());
                    if(yr<21)
                    {
                          alert(""+yr);
                      }
                }
        function validatetestform(mmyform)
                {

                   /* myform=document.forms[mmyform];
                    if(myform.subname.value=="" || myform.subdesc.value=="")
                     {
                         alert("Some of the fields are Empty.");
                         myform.onSubmit=false;
                     }
*/
                }

  /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



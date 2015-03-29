/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

/**
 *
 * @author VIKAS
 */
public class depreciationbean {
    private int  asset_purchase_value;
    private int salvage_value;
    private int asset_life;
    private int result;

    public int getAsset_purchase_value() {
        return asset_purchase_value;
    }

    public void setAsset_purchase_value(int asset_purchase_value) {
        this.asset_purchase_value = asset_purchase_value;
    }

    public int getSalvage_value() {
        return salvage_value;
    }

    public void setSalvage_value(int salvage_value) {
        this.salvage_value = salvage_value;
    }

    public int getAsset_life() {
        return asset_life;
    }

    public void setAsset_life(int asset_life) {
        this.asset_life = asset_life;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }
    
}

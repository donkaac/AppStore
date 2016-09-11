/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import Datacontroller.DataParser;
import Entities.City;
import Entities.Country;
import Entities.Discrict;
import Entities.Province;
import java.awt.Label;
import java.util.ArrayList;

/**
 *
 * @author Ish
 */
public class test {

    public static void main(String[] args) {
        try {
            String provincename = "West";
            String countryname = "Sri lanka";
            String districtname ="Matara";
            String newcityname = "Kakanadura";
            boolean state=true;
            ArrayList<Object> Searchdata = DataParser.Searchdata(new Country());
            if (!Searchdata.isEmpty()) {
                boolean b = true;
                for (Object o : Searchdata) {
                    Country c = (Country) o;

                    if ((c.getCountryName().equals(countryname)) & (c.isState() == state)) {
                        System.out.println(c.getCountryName());
                        Object[] provincelist = c.getProvinces().toArray();
                        for (Object object : provincelist) {
                            Province p = (Province) object;
                            if ((p.getProvinceName().equals(provincename)) & (p.isState() == state)) {
                                System.out.println(p.getProvinceName());
                                Object[] distrcitlist = p.getDiscricts().toArray();
                                for (Object oo : distrcitlist) {
                                    Discrict d = (Discrict) oo;
                                    if ((d.getDiscrictName().equals(districtname)) & (d.isState() == state)) {
                                        System.out.println(d.getDiscrictName());
                                        Object[] citylist = d.getCities().toArray();
                                        for (Object ooo : citylist) {
                                            City ct = (City) ooo;
                                            System.out.println(ct.getCityName());
                                            if (ct.getCityName().equals(newcityname)) {
                                                b = false;
                                            }
                                        }
                                        if (b) {
                                            City City = new City();
                                            City.setCityName(newcityname);
                                            City.setState(true);
                                            City.setDiscrict(d);
                                            DataParser.Savedata(City);
                                        } else {
                                            System.out.println("Allredy Exist!");
                                        }
                                    }

                                }

                            }
                        }

                    }
                }
            }
        } catch (Exception e) {
        }

    }
}

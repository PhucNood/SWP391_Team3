/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dao;

import entity.Image;
import java.util.List;

/**
 *
 * @author admin
 */
public interface ImageDAO {
    public List<Image> getListByIdProduct(int id);
    public String getImageID(String Image);
    public void addImage(String name, String Image);
}

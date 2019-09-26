/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phuctt.daos;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import phuctt.db.DBConnection;
import phuctt.dtos.ImageDTO;

/**
 *
 * @author Thien Phuc
 */
public class ImageDAO implements Serializable {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
    private void closeConnection() throws Exception {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
    
    public List<ImageDTO> getList() throws Exception {
        List<ImageDTO> result = null;
        try {
            String sql = "SELECT Image FROM Image";
            
            conn = DBConnection.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            
            String image;
            ImageDTO dto;
            
            result = new ArrayList<>();
            
            while (rs.next()) {
                image = rs.getString("Image");
                dto = new ImageDTO(0, image);
                
                result.add(dto);
            }
        } finally {
            closeConnection();
        }
        return result;
    }
}

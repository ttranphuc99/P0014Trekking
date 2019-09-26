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
import phuctt.dtos.IntroductionDTO;

/**
 *
 * @author Thien Phuc
 */
public class IntroductionDAO implements Serializable {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
    private void closeConnection() throws Exception {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
    
    public List<IntroductionDTO> getList() throws Exception {
        List<IntroductionDTO> result = null;
        try {
            String sql = "SELECT Name, Image, Description FROM Introduction ORDER BY ID DESC";
            conn = DBConnection.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            
            String name, image, description;
            IntroductionDTO dto;
            
            result = new ArrayList<>();
            
            while (rs.next()) {
                name = rs.getString("Name");
                image = rs.getString("Image");
                description = rs.getString("Description");
                
                dto = new IntroductionDTO(0, name, image, description);
                
                result.add(dto);
            }
        } finally {
            closeConnection();
        }
        return result;
    }
}

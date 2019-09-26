/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phuctt.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import phuctt.db.DBConnection;
import phuctt.dtos.DairyDTO;

/**
 *
 * @author Thien Phuc
 */
public class DairyDAO {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
    private void closeConnection() throws Exception {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
    
    public List<DairyDTO> getList() throws Exception {
        List<DairyDTO> result = null;
        try {
            String sql = "SELECT Name, Description, Image FROM Dairy ORDER BY CreatedTime DESC";
            conn = DBConnection.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            
            String name, description, image;
            DairyDTO dto = null;
            
            result = new ArrayList<>();
            
            while (rs.next()) {
                name = rs.getString("Name");
                description = rs.getString("Description");
                image = rs.getString("Image");
                
                dto = new DairyDTO(0, name, description, image);
                
                result.add(dto);
            }
        } finally {
            closeConnection();
        }
        return result;
    }
}

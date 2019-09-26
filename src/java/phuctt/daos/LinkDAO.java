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
import phuctt.dtos.LinkDTO;

/**
 *
 * @author Thien Phuc
 */
public class LinkDAO implements Serializable {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
    private void closeConnection() throws Exception {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
    
    public List<LinkDTO> getList() throws Exception {
        List<LinkDTO> result = null;
        try {
            String sql = "SELECT Title, Link, Description FROM Link";
            conn = DBConnection.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            
            String title, link, description;
            LinkDTO dto;
            
            result = new ArrayList<>();
            
            while (rs.next()) {
                title = rs.getString("Title");
                link = rs.getString("Link");
                description = rs.getString("Description");
                
                dto = new LinkDTO(0, title, link, description);
                
                result.add(dto);
            }
        } finally {
            closeConnection();
        }
        return result;
    }
}

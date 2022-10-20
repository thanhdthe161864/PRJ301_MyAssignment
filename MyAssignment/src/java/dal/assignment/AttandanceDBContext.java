/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.assignment;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.assignment.Attandance;
import model.assignment.Session;
import model.assignment.Student;
import model.assignment.TimeSlot;

/**
 *
 * @author Admin
 */
public class AttandanceDBContext extends DBContext<Attandance> {

    @Override
    public void insert(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attandance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attandance> list() {
        ArrayList<Attandance> attendances = new ArrayList<>();
        try {
            String sql = "SELECT aid,stdid,sesid, present FROM attandance\n"
                    + "where stdid = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Attandance attendance = new Attandance();
                
                attendance.setId(rs.getInt("aid"));
                attendance.setPresent(rs.getBoolean("present"));
                
                Student student = new Student();
                student.setId(rs.getInt("stdid"));
                attendance.setStudent(student);
                Session session = new Session();
                session.setId(rs.getInt("sesid"));
                attendance.setSession(session);

                
                
                attendances.add(attendance);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(AttandanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return attendances;

    }
    
}

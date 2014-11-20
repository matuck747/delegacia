/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Matuck
 */
public class DelitoDAO {

    private Connection connection;

    public DelitoDAO() throws SQLException {
        this.connection = ConnectionFactory.obtemConexao();
    }

    public void adicionaDelito(Delito delito) throws SQLException {

        String sql = "INSERT INTO fichaPolicial (nome,cpf,residencia,tipoDelito,data,hora,local,estado,img) VALUES (?,?,?,?,?,?,?,?,?)";

        PreparedStatement stmt = connection.prepareStatement(sql);

        stmt.setString(1, delito.getNome());
        stmt.setString(2, delito.getCpf());
        stmt.setString(3, delito.getResidencia());
        stmt.setString(4, delito.getTipoDelito());
        stmt.setDate(5, delito.getData());
        stmt.setString(6, delito.getHora());
        stmt.setString(7, delito.getLocal());
        stmt.setString(8, delito.getEstado());
        stmt.setString(9, delito.getImg());

        stmt.execute();
        stmt.close();

    }

    public void removeDelito(Delito delito) throws SQLException {

        String sql = "DELETE from fichaPolicial where id = ?";

        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setLong(1, delito.getId());
        stmt.execute();
        stmt.close();
    }

    public void alteraDelito(Delito delito) throws SQLException {

        String sql = "UPDATE fichaPolicial SET nome=?,cpf=?,residencia=?,tipoDelito=?,data=?,hora=?,local=?,estado=?,img=? WHERE id='" + delito.getId() + "'";

        PreparedStatement stmt = connection.prepareStatement(sql);

        stmt.setString(1, delito.getNome());
        stmt.setString(2, delito.getCpf());
        stmt.setString(3, delito.getResidencia());
        stmt.setString(4, delito.getTipoDelito());
        stmt.setDate(5, delito.getData());
        stmt.setString(6, delito.getHora());
        stmt.setString(7, delito.getLocal());
        stmt.setString(8, delito.getEstado());
        stmt.setString(9, delito.getImg());

        stmt.execute();
        stmt.close();

    }

    public ArrayList<Delito> getLista() throws SQLException {

        ArrayList<Delito> delitos = new ArrayList<>();

        PreparedStatement stmt = connection.prepareStatement("SELECT * FROM fichaPolicial order by tipoDelito,nome;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Delito d = new Delito();

            d.setId(rs.getLong("id"));
            d.setNome(rs.getString("nome"));
            d.setCpf(rs.getString("cpf"));
            d.setResidencia(rs.getString("residencia"));
            d.setTipoDelito(rs.getString("tipoDelito"));
            d.setData(rs.getDate("data"));
            d.setHora(rs.getString("hora"));
            d.setLocal(rs.getString("local"));
            d.setEstado(rs.getString("estado"));
            d.setImg(rs.getString("img"));

            delitos.add(d);

        }

        rs.close();
        stmt.close();
        return delitos;

    }

    public ArrayList<Delito> getLista2() throws SQLException {

        ArrayList<Delito> delitos = new ArrayList<>();

        PreparedStatement stmt = connection.prepareStatement("SELECT * FROM fichaPolicial order by nome;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Delito d = new Delito();

            d.setId(rs.getLong("id"));
            d.setNome(rs.getString("nome"));
            d.setCpf(rs.getString("cpf"));
            d.setResidencia(rs.getString("residencia"));
            d.setTipoDelito(rs.getString("tipoDelito"));
            d.setData(rs.getDate("data"));
            d.setHora(rs.getString("hora"));
            d.setLocal(rs.getString("local"));
            d.setEstado(rs.getString("estado"));
            d.setImg(rs.getString("img"));

            delitos.add(d);

        }

        rs.close();
        stmt.close();
        return delitos;

    }

    public ArrayList<Delito> getLista3() throws SQLException {

        ArrayList<Delito> delitos = new ArrayList<>();

        PreparedStatement stmt = connection.prepareStatement("SELECT * FROM fichaPolicial order by estado,nome;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Delito d = new Delito();

            d.setId(rs.getLong("id"));
            d.setNome(rs.getString("nome"));
            d.setCpf(rs.getString("cpf"));
            d.setResidencia(rs.getString("residencia"));
            d.setTipoDelito(rs.getString("tipoDelito"));
            d.setData(rs.getDate("data"));
            d.setHora(rs.getString("hora"));
            d.setLocal(rs.getString("local"));
            d.setEstado(rs.getString("estado"));
            d.setImg(rs.getString("img"));

            delitos.add(d);

        }

        rs.close();
        stmt.close();
        return delitos;

    }

}

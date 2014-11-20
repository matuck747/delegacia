/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logicas;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc.Logica;
import servlets.Delito;
import servlets.DelitoDAO;

/**
 *
 * @author strudel
 */
public class RemoveDelitoLogica implements Logica {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
        long id = Long.parseLong(req.getParameter("id"));
        //String nome = req.getParameter("nome");
        Delito delito = new Delito();
        delito.setId(id);
        DelitoDAO dao = new DelitoDAO();
        dao.removeDelito(delito);
        System.out.println("Excluindo delito... ");
        return "lista-delitos.jsp";
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logicas;

import java.sql.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc.Logica;
import servlets.Delito;
import servlets.DelitoDAO;

/**
 *
 * @author strudel
 */
public class AlteraDelitoLogica implements Logica {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {

        long id = Long.parseLong(req.getParameter("id"));
        String nome = req.getParameter("nome");
        String cpf = req.getParameter("cpf");
        String residencia = req.getParameter("residencia");
        String tipoDelito = req.getParameter("tipoDelito");
        String hora = req.getParameter("hora");
        String local = req.getParameter("local");
        Date data = Date.valueOf(req.getParameter("data"));
        String estado = req.getParameter("estado");
        String img = req.getParameter("img");

        Delito delito = new Delito();

        delito.setId(id);
        delito.setCpf(cpf);
        delito.setData(data);
        delito.setHora(hora);
        delito.setLocal(local);
        delito.setNome(nome);
        delito.setResidencia(residencia);
        delito.setTipoDelito(tipoDelito);
        delito.setEstado(estado);
        delito.setImg(img);

        DelitoDAO dao = new DelitoDAO();
        dao.alteraDelito(delito);

        System.out.println("Alterando delito... ");
        return "lista-delitos.jsp";
    }

}

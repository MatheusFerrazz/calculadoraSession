/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.calculadorasession.servlet;

import br.com.calculadorasession.modelo.CalculosCalc;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Matheus
 */
@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
//@WebServlet("/Servlet")
public class Servlet extends HttpServlet {

    CalculosCalc calculo = new CalculosCalc();

    public static double Calculo(String op, double op1, double op2) {

        double resultado = 0;
        switch (op.charAt(0)) {
            case '+':
                resultado = CalculosCalc.Somar(op1, op2);
                break;
            case '-':
                resultado = CalculosCalc.Subtrair(op1, op2);
                break;
            case '*':
                resultado = CalculosCalc.Multiplicar(op1, op2);
                break;
            case '/':
                resultado = CalculosCalc.Dividir(op1, op2);
                break;

        }

        return resultado;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sessao = request.getSession();

        
        if (request.getParameter("op1") != null) {
            sessao.setAttribute("op1", Double.parseDouble(request.getParameter("op1")));
            response.sendRedirect("operacao.jsp");
        } else if (request.getParameter("operacao") != null) {
            sessao.setAttribute("operacao", request.getParameter("operacao"));
            response.sendRedirect("segundaRequisicao.jsp");
        } else if (request.getParameter("op2") != null) {
            sessao.setAttribute("op2", Double.parseDouble(request.getParameter("op2")));

            //request.getSession().setAttribute("resposta", Calculo((String) request.getParameter("operacao"), Double.parseDouble(request.getParameter("op1")) ,Double.parseDouble(request.getParameter("op2"))));
            //JOptionPane.showMessageDialog(null, Calculo((String) sessao.getAttribute("operacao"), (double) sessao.getAttribute("op1"), (double) sessao.getAttribute("op2")));               
            //request.setAttribute("resposta", Double.toString(Calculo((String) sessao.getAttribute("operacao"), (double) sessao.getAttribute("op1"), (double) sessao.getAttribute("op2"))));
            request.setAttribute("resposta", Calculo((String) sessao.getAttribute("operacao"),(double) sessao.getAttribute("op1"), (double) sessao.getAttribute("op2")));
            JOptionPane.showMessageDialog(null, Calculo((String) sessao.getAttribute("operacao"), (double) sessao.getAttribute("op1"), (double) sessao.getAttribute("op2")));               
            request.getRequestDispatcher("resultado.jsp").forward(request, response);

        } else {
            response.sendRedirect("primeiraRequisicao.jsp");
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

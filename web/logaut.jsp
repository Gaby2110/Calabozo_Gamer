<% 
        HttpSession SUsuario =request.getSession();
        SUsuario.removeAttribute("usuario");
        SUsuario.removeAttribute("rol");
        SUsuario.invalidate();
        
        request.getRequestDispatcher("index.jsp").forward(request, response);

%>
<%
    App app = (App)request.getSession().getAttribute("app");
    
%>
<%@page import="com.interativaconsultoria.objetos.App"%>
<%@page import="java.util.Properties"%>
<%@page import="com.interativaconsultoria.dao.Propriedade"%>
<%@page import="com.interativaconsultoria.objetos.User"%>

<aside class="main-sidebar" >
    <!-- sidebar: style can be found in sidebar.less -->
    <section id="menu" style="margin-top: 15px" class="sidebar affix">
    
        <!-- Sidebar user panel -->
        <div class="user-panel">
        <div class="pull-left image" style="min-height: 40px">
          <img src="/Interativaconsultoria/dist/img/<%out.print(app.getNome_sistema()); %>.png" class="img-thumbnail" alt="User Image">
        </div>
            <div class="pull-left info" style="color: #FFF">
                 <p>APP: <%out.print(app.getNome()); %></p>

                <p>Ol�, <% User al = new User();
            al = (User)session.getAttribute("nome");
    out.print(al.getNome()); %></p>
            </div>
           
        </div>
        
          <input type="text" id="tbusca" name="q" class="form-control" placeholder="Buscar...">
              
        
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul id="treeview-menu" class="sidebar-menu">
            <li class="header">MENU DE NAVEGA��O</li>
            <li class="active treeview " >
                <a style="border-left-color: #f00" href="#">
                    <i class="fa fa-arrow-circle-down" style="color: #f00"></i> <span>A��o</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul id="treeview-menu" class="treeview-menu">
                    <li><a href="areas.jsp"><i class="fa fa-angle-right"></i>Cadastro</a></li>
                    <li><a href="entrada-despesa.jsp"><i class="fa fa-angle-right"></i>Altera��o</a></li>
                    <li><a href="buscar-despesa.jsp"><i class="fa fa-angle-right"></i></a></li>

                </ul>
            </li>
            <li class="active treeview">
                <a style="border-left-color: green" href="#">
                    <i class="fa fa-arrow-circle-up" style="color: green"></i>
                    <span>Reuni�o</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul id="treeview-menu" class="treeview-menu">
                    <li><a href="add_reuniao.jsp"><i class="fa fa-angle-right"></i>Criar</a></li>
                    <li><a href="buscar-receita.jsp"><i class="fa fa-angle-right"></i>Buscar Receita</a></li>

                </ul>
            </li>
            <% if(al.getTipo() == 1){ %>
            <li class="active treeview">
                <a style="border-left-color: #005983" href="#">
                    <i class="fa  fa-area-chart" style="color: #005983"></i>
                    <span>Resultados</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul id="treeview-menu" class="treeview-menu">
                    <li><a href="despesa-grafico.jsp"><i class="fa fa-angle-right"></i>Gr�fico despesas</a></li>
                    <li><a href="receita-grafico.jsp"><i class="fa fa-angle-right"></i>Gr�fico receitas</a></li>
                    <li><a href="de_x_re-grafico.jsp"><i class="fa fa-angle-right"></i>Gr�fico receitas x despesas</a></li>




                </ul>
            </li>
             <li class="active treeview">
                <a style="border-left-color: #FF7E00" href="#">
                    <i class="fa  fa-area-chart" style="color: #FF7E00"></i>
                    <span>Relat�rios</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul id="treeview-menu" class="treeview-menu">
                    <li><a href="receita-relatorio.jsp"><i class="fa fa-angle-right"></i>Receita</a></li>




                </ul>
            </li>
            <% };%>
                      
   <li class="active treeview">
                <a style="border-left-color: #FFf" href="#">
                    <i class="fa  fa-sign-out" style="color: #FFf"></i>
                    <span>Configura��es</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul id="treeview-menu" class="treeview-menu">
                    <li><a href="gerenciar-usuarios.jsp" ><i class="glyphicon glyphicon-user"></i>Usu�rios</a></li>
                    <li><a href="/Interativaconsultoria/SvSair" ><i class="glyphicon glyphicon-lock"></i>Sair</a></li>



                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

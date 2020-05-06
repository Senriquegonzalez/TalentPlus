<%@ Page Title="" Language="C#" MasterPageFile="~/View/InicioLogin.Master" AutoEventWireup="true" CodeBehind="iniciologin.aspx.cs" Inherits="TalentPlus.iniciologin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
                <tr>
                    <td class="auto-style19">
                        <h1 class="auto-style5"><%=tablavideo.tablavideo.Rows[video1]["nombre"].ToString()%></h1>
                        <video style="background-color:black;" width="640" height="360"  poster="../img/simpsons.png" controls >  <source src='<% =videocargado %>'type ="video/mp4"> </ video >  


                    </td>
                    <td class="auto-style3">
                           
                        
                        <table class="auto-style14">
                            <tr>
                                
                                <td> 
                                     <a href="../View/vervideologin.aspx?videoid=<%=tablavideo.tablavideo.Rows[video1]["nombrelocal"].ToString()%>"><video style="background-color:black;"  width="200" height="120"  poster="../img/simpsons.png" >  <source src='<% =tablavideo.tablavideo.Rows[video1]["nombrelocal"].ToString() %>'type ="video/mp4"> </video></a>
                                <td>

                                    <h5 class="auto-style16"><%=tablavideo.tablavideo.Rows[video1]["nombre"].ToString()%></h5>
                                     
                                    </td>

                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td> 
                                     <a href="../View/vervideologin.aspx?videoid=<%=tablavideo.tablavideo.Rows[video2]["nombrelocal"].ToString()%>"><video    style="background-color:black;"  width ="200" height="120" poster="../img/homero.png"  >  <source src='<% =tablavideo.tablavideo.Rows[video2]["nombrelocal"].ToString() %>'type ="video/mp4"> </ video ></a>
                                <td>

                                    <h5 class="auto-style17"><%=tablavideo.tablavideo.Rows[video2]["nombre"].ToString()%></h5>
                                     
                                    </td>
                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td>  <a href="../View/vervideologin.aspx?videoid=<%=tablavideo.tablavideo.Rows[video3]["nombrelocal"].ToString()%>"><video style="background-color:black;" width="200" height="120"  >  <source src='<% =tablavideo.tablavideo.Rows[video3]["nombrelocal"].ToString() %>'type ="video/mp4"> </ video ></a>
                                <td>

                                    <h5 class="auto-style18"><%=tablavideo.tablavideo.Rows[video3]["nombre"].ToString()%></h5>
                                     
                                    </td>
                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td> <a href="../View/vervideologin.aspx?videoid=<%=tablavideo.tablavideo.Rows[video4]["nombrelocal"].ToString()%>"><video style="background-color:black;"  width="200" height="120"  >  <source src='<% =tablavideo.tablavideo.Rows[video4]["nombrelocal"].ToString() %>'type ="video/mp4"> </video></a>
                                <td>
                                    
                                    <h5 class="auto-style19"><%=tablavideo.tablavideo.Rows[video4]["nombre"].ToString()%></h5>
                                    </td>
                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td>  <a href="../View/vvervideologin.aspx?videoid=<%=tablavideo.tablavideo.Rows[video5]["nombrelocal"].ToString()%>"><video style="background-color:black;" width="200" height="120"  >  <source src='<% =tablavideo.tablavideo.Rows[video5]["nombrelocal"].ToString() %>'type ="video/mp4"> </ video ></a>
                                <td>

                                    <h5 class="auto-style20"><%=tablavideo.tablavideo.Rows[video5]["nombre"].ToString()%></h5>
                                     
                                    </td>
                                
                            
                        </table>

                    </td>

                </tr>
                <tr>
                    <td class="auto-style19">

                         
                       
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>

    </asp:Panel>
    </asp:Content>

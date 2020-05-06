<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.Master" AutoEventWireup="true" CodeBehind="vervideo.aspx.cs" Inherits="TalentPlus.View.vervideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
                <tr>
                    <td class="auto-style19">
                       
                        <video style="background-color:black;" width="640" height="360"  poster="../img/simpsons.png" controls >  <source src='<% =variablevideo %>'type ="video/mp4"> </ video >  


                    </td>
                    <td class="auto-style3">
                           
                        
                        <table class="auto-style14">
                            <tr>
                                
                                <td> 
                                     <a href="vervideo.aspx?videoid=<%=videoaleatorio.tablavideo.Rows[video1]["nombrelocal"].ToString()%>"><video style="background-color:black;"  width="200" height="120"  poster="../img/simpsons.png" >  <source src='<% =videoaleatorio.tablavideo.Rows[video1]["nombrelocal"].ToString() %>'type ="video/mp4"> </video></a>
                                <td>

                                    <h5 class="auto-style16"><%=videoaleatorio.tablavideo.Rows[video1]["nombre"].ToString()%></h5>
                                     
                                    </td>

                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td> 
                                     <a href="vervideo.aspx?videoid=<%=videoaleatorio.tablavideo.Rows[video2]["nombrelocal"].ToString()%>"><video    style="background-color:black;"  width ="200" height="120" poster="../img/homero.png"  >  <source src='<% =videoaleatorio.tablavideo.Rows[video2]["nombrelocal"].ToString() %>'type ="video/mp4"> </ video ></a><td>

                                    <h5 class="auto-style17"><%=videoaleatorio.tablavideo.Rows[video2]["nombre"].ToString()%></h5>
                                     
                                    </td>
                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td>  <a href="vervideo.aspx?videoid=<%=videoaleatorio.tablavideo.Rows[video3]["nombrelocal"].ToString()%>"><video style="background-color:black;" width="200" height="120"  >  <source src='<% =videoaleatorio.tablavideo.Rows[video3]["nombrelocal"].ToString() %>'type ="video/mp4"> </ video ></a><td>

                                    <h5 class="auto-style18"><%=videoaleatorio.tablavideo.Rows[video3]["nombre"].ToString()%></h5>
                                     
                                    </td>
                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td> <a href="vervideo.aspx?videoid=<%=videoaleatorio.tablavideo.Rows[video4]["nombrelocal"].ToString()%>"><video style="background-color:black;"  width="200" height="120"  >  <source src='<% =videoaleatorio.tablavideo.Rows[video4]["nombrelocal"].ToString() %>'type ="video/mp4"> </video></a>
                                <td>
                                    
                                    <h5 class="auto-style19"><%=videoaleatorio.tablavideo.Rows[video4]["nombre"].ToString()%></h5>
                                    </td>
                                
                            
                        </table>
                        <table class="auto-style14">
                            <tr>
                                
                                <td>  <a href="vervideo.aspx?videoid=<%=videoaleatorio.tablavideo.Rows[video5]["nombrelocal"].ToString()%>"><video style="background-color:black;" width="200" height="120"  >  <source src='<% =videoaleatorio.tablavideo.Rows[video5]["nombrelocal"].ToString() %>'type ="video/mp4"> </ video ></a><td>

                                    <h5 class="auto-style20"><%=videoaleatorio.tablavideo.Rows[video5]["nombre"].ToString()%></h5>
                                     
                                    </td>
                                
                            
                        </table>

                    </td>

                </tr>
                <tr>
                    <td class="auto-style19">

                         
                       
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
                    </td>
                </tr>
            </table>

    </asp:Panel>
    
</asp:Content>

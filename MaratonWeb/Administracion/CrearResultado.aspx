<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Administracion.Master" AutoEventWireup="true" CodeBehind="CrearResultado.aspx.cs" Inherits="MaratonWeb.Administracion.CrearResultado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xs-2">
    </div>

    <div class="col-xs-8">
    <div class="jumbotron">
		<div class="row">
            <form class="form-horizontal" id="NewMaraton" runat="server">
            <fieldset>
                <legend>Creando nuevo resultado</legend>
           
                  <div class="form-group">

                        <asp:Label ID="lblMaraton" runat="server" Text="maraton" >Maraton</asp:Label>

                        <asp:DropDownList runat="server" ID="ddMaraton" class="form-control">
                        <asp:ListItem Value="0" Text="Seleccionar maraton" />
                        <asp:ListItem Value="1" Text="Maraton 1" />
                        <asp:ListItem Value="2" Text="Maraton 2" />
                        <asp:ListItem Value="2" Text="Maraton 3" />
                        <asp:ListItem Value="2" Text="Maraton 4" />
                        </asp:DropDownList>
                        <asp:RangeValidator 
                            ID="RangeValidator2"
                            Text="Seleccione un maraton!"
                            ControlToValidate="ddMaraton" 
                            runat="server"
                            ForeColor="Red"
                            MinimumValue="1" MaximumValue="100000000" Type=Integer />

                </div>

                 <div class="form-group">
                       <asp:Label ID="lblPosicion" runat="server" Text="posicion" >Posicion</asp:Label>

                       <asp:TextBox ID="txtPosicion" runat="server" class="form-control" ></asp:TextBox>
                           <asp:RequiredFieldValidator
                            ID="RequiredFieldValidatorPosicion"
                            ControlToValidate="txtPosicion"
                            Display="Static"
                            ErrorMessage="*"
                            Text="Seleccione una posicion!"
                            runat="server"
                            ForeColor="Red" />
                     <asp:RegularExpressionValidator 
                         ID="Valida1"
                         runat="server" 
                         ErrorMessage="Ingrese solo números"
                         ValidationExpression="^[1-9]+\d*$"
                         ForeColor="Red"
                         ControlToValidate="txtPosicion"> 
                     </asp:RegularExpressionValidator>   
                </div>

                <div class="form-group">
                    <asp:Label ID="lblLlegada" runat="server" Text="llegada" >Llegada</asp:Label>
                       <asp:TextBox ID="txtLlegada" runat="server" class="form-control" ></asp:TextBox>
                           <asp:RequiredFieldValidator
                            ID="RequiredFieldLlegada"
                            ControlToValidate="txtLlegada"
                            Display="Static"
                            ErrorMessage="*"
                            Text="Este campo es obligatorio!"
                            runat="server"
                            ForeColor="Red" />
                </div>

                <div class="form-group">

                     <asp:Label ID="lblEstado" runat="server" Text="maraton" >Estado </asp:Label>
                        <asp:DropDownList runat="server" ID="ddEstado" class="form-control">
                        <asp:ListItem Value="0" Text="Seleccionar estado" />
                        <asp:ListItem Value="1" Text="Finalizo" />
                        <asp:ListItem Value="2" Text="Abandono" />
                        </asp:DropDownList>
                        <asp:RangeValidator 
                            ID="RangeValidator1"
                            Text="Seleccione el estado!"
                            ControlToValidate="ddEstado" 
                            runat="server"
                            ForeColor="Red"
                            MinimumValue="1" MaximumValue="100000000" Type=Integer />
                 </div>

               <div class="form-group">
                    <input class="btn btn-primary" type="submit" value="Guardar">    
                </div> 


            </fieldset>
            </form>
		 </div><!-- find row -->
        </div><!-- find jumbotron -->

 	</div>

 <div class="col-xs-2">
 </div>

</asp:Content>

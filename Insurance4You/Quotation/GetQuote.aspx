<%@ Page Title="Get Quote" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetQuote.aspx.cs" Inherits="Insurance4You.Quotation.GetQuote" %>

<asp:Content ID="Styles" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/GetQuote.css" />
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/jquery.validate.js" />
            <asp:ScriptReference Path="~/Scripts/getquote.js" />
        </Scripts>
    </asp:ScriptManagerProxy>


    <div class="container" id="quotation">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="progr">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="steps">Step 1 of 3</div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-8 hidden-xs line">
                            <div class="icons-wrapper">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <p><i class="fa fa-user fa-3x" aria-hidden="true"></i></p>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <p><i class="fa fa-thumbs-up fa-3x" aria-hidden="true"></i></p>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <p><i class="fa fa-eur fa-3x" aria-hidden="true"></i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h2 class="panel-title">1. Your Details</h2>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div id="alert" class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter details in all the necessary fields bellow</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputTitle" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Title</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList ID="InputTitle" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="">--</asp:ListItem>
                                            <asp:ListItem>Mrs</asp:ListItem>
                                            <asp:ListItem>Miss</asp:ListItem>
                                            <asp:ListItem>Ms</asp:ListItem>
                                            <asp:ListItem>Mr</asp:ListItem>
                                            <asp:ListItem>Dr</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputFirstName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">First Name</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputFirstName" Name="firstName" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputSecondName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Second Name</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputSecondName" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputEmail" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Email</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="InputPhone" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Phone Number</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox CssClass="form-control" ID="InputPhone" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputDOB" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Date of Birth</label>
                                    <div id="InputDOB" class="col-lg-4 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList ID="InputDOBDay" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                    <asp:ListItem>6</asp:ListItem>
                                                    <asp:ListItem>7</asp:ListItem>
                                                    <asp:ListItem>8</asp:ListItem>
                                                    <asp:ListItem>9</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                    <asp:ListItem>11</asp:ListItem>
                                                    <asp:ListItem>12</asp:ListItem>
                                                    <asp:ListItem>13</asp:ListItem>
                                                    <asp:ListItem>14</asp:ListItem>
                                                    <asp:ListItem>15</asp:ListItem>
                                                    <asp:ListItem>16</asp:ListItem>
                                                    <asp:ListItem>17</asp:ListItem>
                                                    <asp:ListItem>18</asp:ListItem>
                                                    <asp:ListItem>19</asp:ListItem>
                                                    <asp:ListItem>20</asp:ListItem>
                                                    <asp:ListItem>21</asp:ListItem>
                                                    <asp:ListItem>22</asp:ListItem>
                                                    <asp:ListItem>23</asp:ListItem>
                                                    <asp:ListItem>24</asp:ListItem>
                                                    <asp:ListItem>25</asp:ListItem>
                                                    <asp:ListItem>26</asp:ListItem>
                                                    <asp:ListItem>27</asp:ListItem>
                                                    <asp:ListItem>28</asp:ListItem>
                                                    <asp:ListItem>29</asp:ListItem>
                                                    <asp:ListItem>30</asp:ListItem>
                                                    <asp:ListItem>31</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                <asp:DropDownList ID="InputDOBMonth" CssClass=" form-control" runat="server">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem Value="1">January</asp:ListItem>
                                                    <asp:ListItem Value="2">February</asp:ListItem>
                                                    <asp:ListItem Value="3">March</asp:ListItem>
                                                    <asp:ListItem Value="4">April</asp:ListItem>
                                                    <asp:ListItem Value="5">May</asp:ListItem>
                                                    <asp:ListItem Value="6">June</asp:ListItem>
                                                    <asp:ListItem Value="7">July</asp:ListItem>
                                                    <asp:ListItem Value="8">August</asp:ListItem>
                                                    <asp:ListItem Value="9">September</asp:ListItem>
                                                    <asp:ListItem Value="10">October</asp:ListItem>
                                                    <asp:ListItem Value="11">November</asp:ListItem>
                                                    <asp:ListItem Value="12">December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList ID="InputDOBYear" CssClass=" form-control" runat="server">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem>1928</asp:ListItem>
                                                    <asp:ListItem>1929</asp:ListItem>
                                                    <asp:ListItem>1930</asp:ListItem>
                                                    <asp:ListItem>1931</asp:ListItem>
                                                    <asp:ListItem>1932</asp:ListItem>
                                                    <asp:ListItem>1933</asp:ListItem>
                                                    <asp:ListItem>1934</asp:ListItem>
                                                    <asp:ListItem>1935</asp:ListItem>
                                                    <asp:ListItem>1936</asp:ListItem>
                                                    <asp:ListItem>1937</asp:ListItem>
                                                    <asp:ListItem>1938</asp:ListItem>
                                                    <asp:ListItem>1939</asp:ListItem>
                                                    <asp:ListItem>1940</asp:ListItem>
                                                    <asp:ListItem>1941</asp:ListItem>
                                                    <asp:ListItem>1942</asp:ListItem>
                                                    <asp:ListItem>1943</asp:ListItem>
                                                    <asp:ListItem>1944</asp:ListItem>
                                                    <asp:ListItem>1945</asp:ListItem>
                                                    <asp:ListItem>1946</asp:ListItem>
                                                    <asp:ListItem>1947</asp:ListItem>
                                                    <asp:ListItem>1948</asp:ListItem>
                                                    <asp:ListItem>1949</asp:ListItem>
                                                    <asp:ListItem>1950</asp:ListItem>
                                                    <asp:ListItem>1951</asp:ListItem>
                                                    <asp:ListItem>1952</asp:ListItem>
                                                    <asp:ListItem>1953</asp:ListItem>
                                                    <asp:ListItem>1954</asp:ListItem>
                                                    <asp:ListItem>1955</asp:ListItem>
                                                    <asp:ListItem>1956</asp:ListItem>
                                                    <asp:ListItem>1957</asp:ListItem>
                                                    <asp:ListItem>1958</asp:ListItem>
                                                    <asp:ListItem>1959</asp:ListItem>
                                                    <asp:ListItem>1960</asp:ListItem>
                                                    <asp:ListItem>1961</asp:ListItem>
                                                    <asp:ListItem>1962</asp:ListItem>
                                                    <asp:ListItem>1963</asp:ListItem>
                                                    <asp:ListItem>1964</asp:ListItem>
                                                    <asp:ListItem>1965</asp:ListItem>
                                                    <asp:ListItem>1966</asp:ListItem>
                                                    <asp:ListItem>1967</asp:ListItem>
                                                    <asp:ListItem>1968</asp:ListItem>
                                                    <asp:ListItem>1969</asp:ListItem>
                                                    <asp:ListItem>1970</asp:ListItem>
                                                    <asp:ListItem>1971</asp:ListItem>
                                                    <asp:ListItem>1972</asp:ListItem>
                                                    <asp:ListItem>1973</asp:ListItem>
                                                    <asp:ListItem>1974</asp:ListItem>
                                                    <asp:ListItem>1975</asp:ListItem>
                                                    <asp:ListItem>1976</asp:ListItem>
                                                    <asp:ListItem>1977</asp:ListItem>
                                                    <asp:ListItem>1978</asp:ListItem>
                                                    <asp:ListItem>1979</asp:ListItem>
                                                    <asp:ListItem>1980</asp:ListItem>
                                                    <asp:ListItem>1981</asp:ListItem>
                                                    <asp:ListItem>1982</asp:ListItem>
                                                    <asp:ListItem>1983</asp:ListItem>
                                                    <asp:ListItem>1984</asp:ListItem>
                                                    <asp:ListItem>1985</asp:ListItem>
                                                    <asp:ListItem>1986</asp:ListItem>
                                                    <asp:ListItem>1987</asp:ListItem>
                                                    <asp:ListItem>1988</asp:ListItem>
                                                    <asp:ListItem>1989</asp:ListItem>
                                                    <asp:ListItem>1990</asp:ListItem>
                                                    <asp:ListItem>1991</asp:ListItem>
                                                    <asp:ListItem>1992</asp:ListItem>
                                                    <asp:ListItem>1993</asp:ListItem>
                                                    <asp:ListItem>1994</asp:ListItem>
                                                    <asp:ListItem>1995</asp:ListItem>
                                                    <asp:ListItem>1996</asp:ListItem>
                                                    <asp:ListItem>1997</asp:ListItem>
                                                    <asp:ListItem>1998</asp:ListItem>
                                                    <asp:ListItem>1999</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputCounty" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">County</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList ID="InputCounty" CssClass=" form-control" runat="server">
                                            <asp:ListItem Value="">--</asp:ListItem>
                                            <asp:ListItem>Dublin 1</asp:ListItem>
                                            <asp:ListItem>Dublin 2</asp:ListItem>
                                            <asp:ListItem>Dublin 3</asp:ListItem>
                                            <asp:ListItem>Dublin 4</asp:ListItem>
                                            <asp:ListItem>Dublin 5</asp:ListItem>
                                            <asp:ListItem>Dublin 6</asp:ListItem>
                                            <asp:ListItem>Dublin 7</asp:ListItem>
                                            <asp:ListItem>Dublin 8</asp:ListItem>
                                            <asp:ListItem>Dublin 9</asp:ListItem>
                                            <asp:ListItem>Dublin 10</asp:ListItem>
                                            <asp:ListItem>Dublin 11</asp:ListItem>
                                            <asp:ListItem>Dublin 12</asp:ListItem>
                                            <asp:ListItem>Dublin 13</asp:ListItem>
                                            <asp:ListItem>Dublin 14</asp:ListItem>
                                            <asp:ListItem>Dublin 15</asp:ListItem>
                                            <asp:ListItem>Dublin 16</asp:ListItem>
                                            <asp:ListItem>Dublin 17</asp:ListItem>
                                            <asp:ListItem>Dublin 18</asp:ListItem>
                                            <asp:ListItem>Dublin 19</asp:ListItem>
                                            <asp:ListItem>Dublin 20</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h2 class="panel-title">2. Car Details</h2>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputReg" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Registration Number</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputReg" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputDOM" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Date of Manufacture</label>
                                    <div id="InputDOM" class="col-lg-4 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList ID="InputDOMDay" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                    <asp:ListItem>6</asp:ListItem>
                                                    <asp:ListItem>7</asp:ListItem>
                                                    <asp:ListItem>8</asp:ListItem>
                                                    <asp:ListItem>9</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                    <asp:ListItem>11</asp:ListItem>
                                                    <asp:ListItem>12</asp:ListItem>
                                                    <asp:ListItem>13</asp:ListItem>
                                                    <asp:ListItem>14</asp:ListItem>
                                                    <asp:ListItem>15</asp:ListItem>
                                                    <asp:ListItem>16</asp:ListItem>
                                                    <asp:ListItem>17</asp:ListItem>
                                                    <asp:ListItem>18</asp:ListItem>
                                                    <asp:ListItem>19</asp:ListItem>
                                                    <asp:ListItem>20</asp:ListItem>
                                                    <asp:ListItem>21</asp:ListItem>
                                                    <asp:ListItem>22</asp:ListItem>
                                                    <asp:ListItem>23</asp:ListItem>
                                                    <asp:ListItem>24</asp:ListItem>
                                                    <asp:ListItem>25</asp:ListItem>
                                                    <asp:ListItem>26</asp:ListItem>
                                                    <asp:ListItem>27</asp:ListItem>
                                                    <asp:ListItem>28</asp:ListItem>
                                                    <asp:ListItem>29</asp:ListItem>
                                                    <asp:ListItem>30</asp:ListItem>
                                                    <asp:ListItem>31</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                <asp:DropDownList ID="InputDOMMonth" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem Value="1">January</asp:ListItem>
                                                    <asp:ListItem Value="2">February</asp:ListItem>
                                                    <asp:ListItem Value="3">March</asp:ListItem>
                                                    <asp:ListItem Value="4">April</asp:ListItem>
                                                    <asp:ListItem Value="5">May</asp:ListItem>
                                                    <asp:ListItem Value="6">June</asp:ListItem>
                                                    <asp:ListItem Value="7">July</asp:ListItem>
                                                    <asp:ListItem Value="8">August</asp:ListItem>
                                                    <asp:ListItem Value="9">September</asp:ListItem>
                                                    <asp:ListItem Value="10">October</asp:ListItem>
                                                    <asp:ListItem Value="11">November</asp:ListItem>
                                                    <asp:ListItem Value="12">December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList ID="InputDOMYear" runat="server" CssClass="form-control">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem>1990</asp:ListItem>
                                                    <asp:ListItem>1991</asp:ListItem>
                                                    <asp:ListItem>1992</asp:ListItem>
                                                    <asp:ListItem>1993</asp:ListItem>
                                                    <asp:ListItem>1994</asp:ListItem>
                                                    <asp:ListItem>1995</asp:ListItem>
                                                    <asp:ListItem>1996</asp:ListItem>
                                                    <asp:ListItem>1997</asp:ListItem>
                                                    <asp:ListItem>1998</asp:ListItem>
                                                    <asp:ListItem>1999</asp:ListItem>
                                                    <asp:ListItem>2000</asp:ListItem>
                                                    <asp:ListItem>2001</asp:ListItem>
                                                    <asp:ListItem>2002</asp:ListItem>
                                                    <asp:ListItem>2003</asp:ListItem>
                                                    <asp:ListItem>2004</asp:ListItem>
                                                    <asp:ListItem>2005</asp:ListItem>
                                                    <asp:ListItem>2006</asp:ListItem>
                                                    <asp:ListItem>2007</asp:ListItem>
                                                    <asp:ListItem>2008</asp:ListItem>
                                                    <asp:ListItem>2009</asp:ListItem>
                                                    <asp:ListItem>2010</asp:ListItem>
                                                    <asp:ListItem>2011</asp:ListItem>
                                                    <asp:ListItem>2012</asp:ListItem>
                                                    <asp:ListItem>2013</asp:ListItem>
                                                    <asp:ListItem>2014</asp:ListItem>
                                                    <asp:ListItem>2015</asp:ListItem>
                                                    <asp:ListItem>2016</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputMake" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Make</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputMake" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputModel" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Model</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputModel" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputEngine" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Engine</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputEngine" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h2 class="panel-title">3. Driving History</h2>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputLicenceNumber" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Licence No.</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputLicenceNumber" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputBonus" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Years No Claims Bonus</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList ID="InputBonus" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="">--</asp:ListItem>
                                            <asp:ListItem>0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputPenaltyPoints" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Penalty Points</label>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="InputPenaltyPoints">
                                            <asp:ListItem Value="">--</asp:ListItem>
                                            <asp:ListItem>0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <asp:HiddenField ID="HiddenFieldClaims" Value="false" runat="server" />
                                <asp:HiddenField ID="HiddenFieldConvictions" Value="false" runat="server" />

                                <div class="form-group">
                                    <label id="Claims" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 lead control-label">Claims</label>
                                    <asp:LinkButton ID="LinkButtonAddClaims" runat="server">Add<i class="fa fa-plus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonRemoveClaims" runat="server">Remove<i class="fa fa-minus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                </div>
                                <div id="IncidentForm">
                                    <div class="form-group">
                                        <label for="InputClaimDate" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Incident Date</label>
                                        <div id="InputClaimDate" class="col-lg-4 col-md-5 col-sm-5 col-xs-7">
                                            <div class="from-inline">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputClaimDateDay">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputClaimDateMonth">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem Value="1">January</asp:ListItem>
                                                        <asp:ListItem Value="2">February</asp:ListItem>
                                                        <asp:ListItem Value="3">March</asp:ListItem>
                                                        <asp:ListItem Value="4">April</asp:ListItem>
                                                        <asp:ListItem Value="5">May</asp:ListItem>
                                                        <asp:ListItem Value="6">June</asp:ListItem>
                                                        <asp:ListItem Value="7">July</asp:ListItem>
                                                        <asp:ListItem Value="8">August</asp:ListItem>
                                                        <asp:ListItem Value="9">September</asp:ListItem>
                                                        <asp:ListItem Value="10">October</asp:ListItem>
                                                        <asp:ListItem Value="11">November</asp:ListItem>
                                                        <asp:ListItem Value="12">December</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputClaimDateYear">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem>1990</asp:ListItem>
                                                        <asp:ListItem>1991</asp:ListItem>
                                                        <asp:ListItem>1992</asp:ListItem>
                                                        <asp:ListItem>1993</asp:ListItem>
                                                        <asp:ListItem>1994</asp:ListItem>
                                                        <asp:ListItem>1995</asp:ListItem>
                                                        <asp:ListItem>1996</asp:ListItem>
                                                        <asp:ListItem>1997</asp:ListItem>
                                                        <asp:ListItem>1998</asp:ListItem>
                                                        <asp:ListItem>1999</asp:ListItem>
                                                        <asp:ListItem>2000</asp:ListItem>
                                                        <asp:ListItem>2001</asp:ListItem>
                                                        <asp:ListItem>2002</asp:ListItem>
                                                        <asp:ListItem>2003</asp:ListItem>
                                                        <asp:ListItem>2004</asp:ListItem>
                                                        <asp:ListItem>2005</asp:ListItem>
                                                        <asp:ListItem>2006</asp:ListItem>
                                                        <asp:ListItem>2007</asp:ListItem>
                                                        <asp:ListItem>2008</asp:ListItem>
                                                        <asp:ListItem>2009</asp:ListItem>
                                                        <asp:ListItem>2010</asp:ListItem>
                                                        <asp:ListItem>2011</asp:ListItem>
                                                        <asp:ListItem>2012</asp:ListItem>
                                                        <asp:ListItem>2013</asp:ListItem>
                                                        <asp:ListItem>2014</asp:ListItem>
                                                        <asp:ListItem>2015</asp:ListItem>
                                                        <asp:ListItem>2016</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputClaimType" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Incident Type</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="InputClaimType"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label id="Convictions" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 lead control-label">Convitions</label>
                                    <asp:LinkButton ID="LinkButtonAddConvictions" runat="server">Add<i class="fa fa-plus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonRemoveConvictions" runat="server">Remove<i class="fa fa-minus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                </div>
                                <div id="ConvictionForm">
                                    <div class="form-group">
                                        <label for="InputConvictionDate" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Conviction Date</label>
                                        <div id="InputConvictionDate" class="col-lg-5 col-md-5 col-sm-5 col-xs-7">
                                            <div class="from-inline">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputConvictionDateDay">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputConvictionDateMonth">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem Value="1">January</asp:ListItem>
                                                        <asp:ListItem Value="2">February</asp:ListItem>
                                                        <asp:ListItem Value="3">March</asp:ListItem>
                                                        <asp:ListItem Value="4">April</asp:ListItem>
                                                        <asp:ListItem Value="5">May</asp:ListItem>
                                                        <asp:ListItem Value="6">June</asp:ListItem>
                                                        <asp:ListItem Value="7">July</asp:ListItem>
                                                        <asp:ListItem Value="8">August</asp:ListItem>
                                                        <asp:ListItem Value="9">September</asp:ListItem>
                                                        <asp:ListItem Value="10">October</asp:ListItem>
                                                        <asp:ListItem Value="11">November</asp:ListItem>
                                                        <asp:ListItem Value="12">December</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputConvictionDateYear">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem>1990</asp:ListItem>
                                                        <asp:ListItem>1991</asp:ListItem>
                                                        <asp:ListItem>1992</asp:ListItem>
                                                        <asp:ListItem>1993</asp:ListItem>
                                                        <asp:ListItem>1994</asp:ListItem>
                                                        <asp:ListItem>1995</asp:ListItem>
                                                        <asp:ListItem>1996</asp:ListItem>
                                                        <asp:ListItem>1997</asp:ListItem>
                                                        <asp:ListItem>1998</asp:ListItem>
                                                        <asp:ListItem>1999</asp:ListItem>
                                                        <asp:ListItem>2000</asp:ListItem>
                                                        <asp:ListItem>2001</asp:ListItem>
                                                        <asp:ListItem>2002</asp:ListItem>
                                                        <asp:ListItem>2003</asp:ListItem>
                                                        <asp:ListItem>2004</asp:ListItem>
                                                        <asp:ListItem>2005</asp:ListItem>
                                                        <asp:ListItem>2006</asp:ListItem>
                                                        <asp:ListItem>2007</asp:ListItem>
                                                        <asp:ListItem>2008</asp:ListItem>
                                                        <asp:ListItem>2009</asp:ListItem>
                                                        <asp:ListItem>2010</asp:ListItem>
                                                        <asp:ListItem>2011</asp:ListItem>
                                                        <asp:ListItem>2012</asp:ListItem>
                                                        <asp:ListItem>2013</asp:ListItem>
                                                        <asp:ListItem>2014</asp:ListItem>
                                                        <asp:ListItem>2015</asp:ListItem>
                                                        <asp:ListItem>2016</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputConvictionType" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Conviction Type</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:TextBox runat="server" ID="InputConvictionType" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h2 class="panel-title">4. Additional Drivers </h2>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour">
                            <div class="form-horizontal">
                                <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                                <div class="form-group"></div>


                                <asp:HiddenField ID="HiddenFieldAdditionalDriver" Value="false" runat="server" />

                                <div class="form-group">
                                    <label id="AdditionalDirver" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 lead control-label">Additional Driver</label>
                                    <asp:LinkButton ID="LinkButtonAddDriver" runat="server">Add<i class="fa fa-plus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonRemoveDriver" runat="server">Remove<i class="fa fa-minus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                </div>
                                <div id="AdditionalDriverForm">
                                    <div class="form-group">
                                        <label for="InputAdditionalDriverTitle" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Title</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverTitle">
                                                <asp:ListItem Value="">--</asp:ListItem>
                                                <asp:ListItem>Mrs</asp:ListItem>
                                                <asp:ListItem>Miss</asp:ListItem>
                                                <asp:ListItem>Ms</asp:ListItem>
                                                <asp:ListItem>Mr</asp:ListItem>
                                                <asp:ListItem>Dr</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputAdditionalDriverFirstName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">First Name</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:TextBox runat="server" ID="InputAdditionalDriverFirstName" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputAdditionalDriveSecondName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Second Name</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:TextBox runat="server" ID="InputAdditionalDriverSecondName" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputAdditionalDriverEmail" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Email</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:TextBox runat="server" ID="InputAdditionalDriverEmail" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputAdditionalDriverPhone" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Phone Number</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:TextBox runat="server" ID="InputAdditionalDriverPhone" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputAdditionalDriverDOB" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Date of Birth</label>
                                        <div id="InputAdditionalDriverDOB" class="col-lg-4 col-md-5 col-sm-5 col-xs-7">
                                            <div class="from-inline">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverDOBDay">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverDOBMonth">
                                                         <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem Value="1">January</asp:ListItem>
                                                        <asp:ListItem Value="2">February</asp:ListItem>
                                                        <asp:ListItem Value="3">March</asp:ListItem>
                                                        <asp:ListItem Value="4">April</asp:ListItem>
                                                        <asp:ListItem Value="5">May</asp:ListItem>
                                                        <asp:ListItem Value="6">June</asp:ListItem>
                                                        <asp:ListItem Value="7">July</asp:ListItem>
                                                        <asp:ListItem Value="8">August</asp:ListItem>
                                                        <asp:ListItem Value="9">September</asp:ListItem>
                                                        <asp:ListItem Value="10">October</asp:ListItem>
                                                        <asp:ListItem Value="11">November</asp:ListItem>
                                                        <asp:ListItem Value="12">December</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverDOBYear">
                                                        <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem>1928</asp:ListItem>
                                                        <asp:ListItem>1929</asp:ListItem>
                                                        <asp:ListItem>1930</asp:ListItem>
                                                        <asp:ListItem>1931</asp:ListItem>
                                                        <asp:ListItem>1932</asp:ListItem>
                                                        <asp:ListItem>1933</asp:ListItem>
                                                        <asp:ListItem>1934</asp:ListItem>
                                                        <asp:ListItem>1935</asp:ListItem>
                                                        <asp:ListItem>1936</asp:ListItem>
                                                        <asp:ListItem>1937</asp:ListItem>
                                                        <asp:ListItem>1938</asp:ListItem>
                                                        <asp:ListItem>1939</asp:ListItem>
                                                        <asp:ListItem>1940</asp:ListItem>
                                                        <asp:ListItem>1941</asp:ListItem>
                                                        <asp:ListItem>1942</asp:ListItem>
                                                        <asp:ListItem>1943</asp:ListItem>
                                                        <asp:ListItem>1944</asp:ListItem>
                                                        <asp:ListItem>1945</asp:ListItem>
                                                        <asp:ListItem>1946</asp:ListItem>
                                                        <asp:ListItem>1947</asp:ListItem>
                                                        <asp:ListItem>1948</asp:ListItem>
                                                        <asp:ListItem>1949</asp:ListItem>
                                                        <asp:ListItem>1950</asp:ListItem>
                                                        <asp:ListItem>1951</asp:ListItem>
                                                        <asp:ListItem>1952</asp:ListItem>
                                                        <asp:ListItem>1953</asp:ListItem>
                                                        <asp:ListItem>1954</asp:ListItem>
                                                        <asp:ListItem>1955</asp:ListItem>
                                                        <asp:ListItem>1956</asp:ListItem>
                                                        <asp:ListItem>1957</asp:ListItem>
                                                        <asp:ListItem>1958</asp:ListItem>
                                                        <asp:ListItem>1959</asp:ListItem>
                                                        <asp:ListItem>1960</asp:ListItem>
                                                        <asp:ListItem>1961</asp:ListItem>
                                                        <asp:ListItem>1962</asp:ListItem>
                                                        <asp:ListItem>1963</asp:ListItem>
                                                        <asp:ListItem>1964</asp:ListItem>
                                                        <asp:ListItem>1965</asp:ListItem>
                                                        <asp:ListItem>1966</asp:ListItem>
                                                        <asp:ListItem>1967</asp:ListItem>
                                                        <asp:ListItem>1968</asp:ListItem>
                                                        <asp:ListItem>1969</asp:ListItem>
                                                        <asp:ListItem>1970</asp:ListItem>
                                                        <asp:ListItem>1971</asp:ListItem>
                                                        <asp:ListItem>1972</asp:ListItem>
                                                        <asp:ListItem>1973</asp:ListItem>
                                                        <asp:ListItem>1974</asp:ListItem>
                                                        <asp:ListItem>1975</asp:ListItem>
                                                        <asp:ListItem>1976</asp:ListItem>
                                                        <asp:ListItem>1977</asp:ListItem>
                                                        <asp:ListItem>1978</asp:ListItem>
                                                        <asp:ListItem>1979</asp:ListItem>
                                                        <asp:ListItem>1980</asp:ListItem>
                                                        <asp:ListItem>1981</asp:ListItem>
                                                        <asp:ListItem>1982</asp:ListItem>
                                                        <asp:ListItem>1983</asp:ListItem>
                                                        <asp:ListItem>1984</asp:ListItem>
                                                        <asp:ListItem>1985</asp:ListItem>
                                                        <asp:ListItem>1986</asp:ListItem>
                                                        <asp:ListItem>1987</asp:ListItem>
                                                        <asp:ListItem>1988</asp:ListItem>
                                                        <asp:ListItem>1989</asp:ListItem>
                                                        <asp:ListItem>1990</asp:ListItem>
                                                        <asp:ListItem>1991</asp:ListItem>
                                                        <asp:ListItem>1992</asp:ListItem>
                                                        <asp:ListItem>1993</asp:ListItem>
                                                        <asp:ListItem>1994</asp:ListItem>
                                                        <asp:ListItem>1995</asp:ListItem>
                                                        <asp:ListItem>1996</asp:ListItem>
                                                        <asp:ListItem>1997</asp:ListItem>
                                                        <asp:ListItem>1998</asp:ListItem>
                                                        <asp:ListItem>1999</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="InputAdditionalDriverCounty" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">County</label>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                            <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverCounty">
                                                <asp:ListItem Value="">--</asp:ListItem>
                                                <asp:ListItem>Dublin 1</asp:ListItem>
                                                <asp:ListItem>Dublin 2</asp:ListItem>
                                                <asp:ListItem>Dublin 3</asp:ListItem>
                                                <asp:ListItem>Dublin 4</asp:ListItem>
                                                <asp:ListItem>Dublin 5</asp:ListItem>
                                                <asp:ListItem>Dublin 6</asp:ListItem>
                                                <asp:ListItem>Dublin 7</asp:ListItem>
                                                <asp:ListItem>Dublin 8</asp:ListItem>
                                                <asp:ListItem>Dublin 9</asp:ListItem>
                                                <asp:ListItem>Dublin 10</asp:ListItem>
                                                <asp:ListItem>Dublin 11</asp:ListItem>
                                                <asp:ListItem>Dublin 12</asp:ListItem>
                                                <asp:ListItem>Dublin 13</asp:ListItem>
                                                <asp:ListItem>Dublin 14</asp:ListItem>
                                                <asp:ListItem>Dublin 15</asp:ListItem>
                                                <asp:ListItem>Dublin 16</asp:ListItem>
                                                <asp:ListItem>Dublin 17</asp:ListItem>
                                                <asp:ListItem>Dublin 18</asp:ListItem>
                                                <asp:ListItem>Dublin 19</asp:ListItem>
                                                <asp:ListItem>Dublin 20</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFive">
                            <h2 class="panel-title">5. Insurance Details </h2>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFive">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputStartPolicyDate" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-2 col-md-offset-2  control-label">Start Date</label>
                                    <div id="InputStartPolicyDate" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputStartPolicyDateDay">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                    <asp:ListItem>6</asp:ListItem>
                                                    <asp:ListItem>7</asp:ListItem>
                                                    <asp:ListItem>8</asp:ListItem>
                                                    <asp:ListItem>9</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                    <asp:ListItem>11</asp:ListItem>
                                                    <asp:ListItem>12</asp:ListItem>
                                                    <asp:ListItem>13</asp:ListItem>
                                                    <asp:ListItem>14</asp:ListItem>
                                                    <asp:ListItem>15</asp:ListItem>
                                                    <asp:ListItem>16</asp:ListItem>
                                                    <asp:ListItem>17</asp:ListItem>
                                                    <asp:ListItem>18</asp:ListItem>
                                                    <asp:ListItem>19</asp:ListItem>
                                                    <asp:ListItem>20</asp:ListItem>
                                                    <asp:ListItem>21</asp:ListItem>
                                                    <asp:ListItem>22</asp:ListItem>
                                                    <asp:ListItem>23</asp:ListItem>
                                                    <asp:ListItem>24</asp:ListItem>
                                                    <asp:ListItem>25</asp:ListItem>
                                                    <asp:ListItem>26</asp:ListItem>
                                                    <asp:ListItem>27</asp:ListItem>
                                                    <asp:ListItem>28</asp:ListItem>
                                                    <asp:ListItem>29</asp:ListItem>
                                                    <asp:ListItem>30</asp:ListItem>
                                                    <asp:ListItem>31</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputStartPolicyDateMonth">
                                                     <asp:ListItem Value="">--</asp:ListItem>
                                                        <asp:ListItem Value="1">January</asp:ListItem>
                                                        <asp:ListItem Value="2">February</asp:ListItem>
                                                        <asp:ListItem Value="3">March</asp:ListItem>
                                                        <asp:ListItem Value="4">April</asp:ListItem>
                                                        <asp:ListItem Value="5">May</asp:ListItem>
                                                        <asp:ListItem Value="6">June</asp:ListItem>
                                                        <asp:ListItem Value="7">July</asp:ListItem>
                                                        <asp:ListItem Value="8">August</asp:ListItem>
                                                        <asp:ListItem Value="9">September</asp:ListItem>
                                                        <asp:ListItem Value="10">October</asp:ListItem>
                                                        <asp:ListItem Value="11">November</asp:ListItem>
                                                        <asp:ListItem Value="12">December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputStartPolicyDateYear">
                                                    <asp:ListItem Value="">--</asp:ListItem>
                                                    <asp:ListItem>2016</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 col-lg-offset-3 col-md-offset-3">
                                        <asp:CheckBox ID="CheckBoxAcceptTerms" runat="server" />
                                    </div>
                                    <label for="CheckBoxAcceptTerms" class="col-lg-6 col-md-4 col-sm-4 col-xs-6 control-label">I accept the</label><asp:LinkButton ID="Terms" runat="server" OnClick="Terms_Click">terms and conditioins</asp:LinkButton> 

                                       
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 col-lg-offset-2 col-md-offset-2 col-sm-offset-2 col-xs-offset-2 ">
                                    <asp:Button ID="Button5" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Continue" OnClick="Button5_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function () {
            var x = $('#form');
            $(x).validate({
                rules: {
                    '<%= InputTitle.UniqueID %>': { required: true },
                    '<%= InputDOBDay.UniqueID %>': { required: true },
                    '<%= InputDOBMonth.UniqueID %>': { required: true },
                    '<%= InputDOBYear.UniqueID %>': { required: true },
                    '<%= InputCounty.UniqueID %>': { required: true },
                    '<%= InputDOMDay.UniqueID %>': { required: true },
                    '<%= InputDOMMonth.UniqueID %>': { required: true },
                    '<%= InputDOMYear.UniqueID %>': { required: true },
                    '<%= InputBonus.UniqueID %>': { required: true },
                    '<%= InputClaimDateDay.UniqueID %>': { required: true },
                    '<%= InputClaimDateMonth.UniqueID %>': { required: true },
                    '<%= InputClaimDateYear.UniqueID %>': { required: true },
                    '<%= InputConvictionDateDay.UniqueID %>': { required: true },
                    '<%= InputConvictionDateMonth.UniqueID %>': { required: true },
                    '<%= InputConvictionDateYear.UniqueID %>': { required: true },
                    '<%= InputPenaltyPoints.UniqueID %>': { required: true },
                    '<%= InputAdditionalDriverTitle.UniqueID %>': { required: true },
                    '<%= InputAdditionalDriverDOBDay.UniqueID %>': { required: true },
                    '<%= InputAdditionalDriverDOBMonth.UniqueID %>': { required: true },
                    '<%= InputAdditionalDriverDOBYear.UniqueID %>': { required: true },
                    '<%= InputAdditionalDriverCounty.UniqueID %>': { required: true },
                    '<%= InputStartPolicyDateDay.UniqueID %>': { required: true },
                    '<%= InputStartPolicyDateMonth.UniqueID %>': { required: true },
                    '<%= InputStartPolicyDateYear.UniqueID %>': { required: false },
                    '<%= InputFirstName.UniqueID %>': "required",
                    '<%= InputSecondName.UniqueID %>': "required",
                    '<%= InputEmail.UniqueID %>': { required: true, email: true },
                    '<%= InputPhone.UniqueID %>': { required: true, number: true },
                    '<%= InputReg.UniqueID %>': "required",
                    '<%= InputMake.UniqueID %>': "required",
                    '<%= InputModel.UniqueID %>': "required",
                    '<%= InputEngine.UniqueID %>': { required: true, number: true, range: [700, 3000] },
                    '<%= InputClaimType.UniqueID %>': "required",
                    '<%= InputConvictionType.UniqueID %>': "required",
                    '<%= InputAdditionalDriverFirstName.UniqueID %>': "required",
                    '<%= InputAdditionalDriverSecondName.UniqueID %>': "required",
                    '<%= InputAdditionalDriverEmail.UniqueID %>': { required: true, email: true },
                    '<%= InputStartPolicyDateYear.UniqueID %>': "required",
                    '<%= CheckBoxAcceptTerms.UniqueID %>': "required",
                    '<%= InputLicenceNumber.UniqueID %>': "required"
                },

                messages: {
                    '<%= InputDOBDay.UniqueID %>': "*",
                    '<%= InputDOBMonth.UniqueID %>': "*",
                    '<%= InputDOBYear.UniqueID %>': "*",
                    '<%= InputDOMDay.UniqueID %>': "*",
                    '<%= InputDOMMonth.UniqueID %>': "*",
                    '<%= InputDOMYear.UniqueID %>': "*",
                    '<%= InputClaimDateDay.UniqueID %>': "*",
                    '<%= InputClaimDateMonth.UniqueID %>': "*",
                    '<%= InputClaimDateYear.UniqueID %>': "*",
                    '<%= InputConvictionDateDay.UniqueID %>': "*",
                    '<%= InputConvictionDateMonth.UniqueID %>': "*",
                    '<%= InputConvictionDateYear.UniqueID %>': "*",
                    '<%= InputAdditionalDriverDOBDay.UniqueID %>': "*",
                    '<%= InputAdditionalDriverDOBMonth.UniqueID %>': "*",
                    '<%= InputAdditionalDriverDOBYear.UniqueID %>': "*",
                    '<%= InputStartPolicyDateDay.UniqueID %>': "*",
                    '<%= InputStartPolicyDateMonth.UniqueID %>': "*",
                    '<%= InputStartPolicyDateYear.UniqueID %>': "*",
                    '<%= CheckBoxAcceptTerms.UniqueID %>': "*"
                },
                errorPlacement: function (error, element) {
                    element.after(error);
                    error.css("color", "red");
                    error.css('position', 'relative');
                },

                highlight: function (element, errorClass) {
                    $(element).closest('.panel-collapse').find('.alert').removeClass('alert-success');
                    $(element).closest('.panel-collapse').find('.alert').addClass('alert-danger');
                },
                unhighlight: function (element, errorClass) {
                    $(element).closest('.panel-collapse').find('.alert').removeClass('alert-danger');
                    $(element).closest('.panel-collapse').find('.alert').addClass('alert-success');
                }
            });
            $('#MainContent_Button5').on('click', function () {
                if ($("#form1").valid()) {
                    console.log("true");
                } else {
                    console.log("false");
                };
            });
        });
        //function preventBack() { window.history.forward(); }
        //setTimeout("preventBack()", 0);
        //window.onunload = function () { null };
    </script>
</asp:Content>

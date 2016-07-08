<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetQuote.aspx.cs" Inherits="Insurance4You.Quotation.GetQuote" %>

<asp:Content ID="Styles" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/GetQuote.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" id="quotation">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="progr">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <p>Your Progress</p>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-8 line">
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
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">1. Your Details</a>
                            </h2>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputTitle" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Title</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList ID="InputTitle" CssClass="form-control" runat="server">
                                            <asp:ListItem>--</asp:ListItem>
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
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputFirstName" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputSecondName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Second Name</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputSecondName" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputEmail" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Email</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="InputPhone" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Phone Number</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox CssClass="form-control" ID="InputPhone" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputDOB" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Date of Birth</label>
                                    <div id="InputDOB" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList ID="InputDOBDay" CssClass="form-control" runat="server">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                                    <asp:ListItem>--</asp:ListItem>
                                                    <asp:ListItem>January</asp:ListItem>
                                                    <asp:ListItem>February</asp:ListItem>
                                                    <asp:ListItem>March</asp:ListItem>
                                                    <asp:ListItem>April</asp:ListItem>
                                                    <asp:ListItem>May</asp:ListItem>
                                                    <asp:ListItem>June</asp:ListItem>
                                                    <asp:ListItem>July</asp:ListItem>
                                                    <asp:ListItem>August</asp:ListItem>
                                                    <asp:ListItem>September</asp:ListItem>
                                                    <asp:ListItem>October</asp:ListItem>
                                                    <asp:ListItem>November</asp:ListItem>
                                                    <asp:ListItem>December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList ID="InputDOBYear" CssClass=" form-control" runat="server">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList ID="InputCounty" CssClass=" form-control" runat="server">
                                            <asp:ListItem>--</asp:ListItem>
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
                                <div class="form-group">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-lg-offset-5 col-md-offset-5 col-sm-offset-5 col-xs-offset-5">
                                        <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h2 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">2. Car Details</a>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputReg" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Registration Number</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputReg" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputDOM" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Date of Manufacture</label>
                                    <div id="InputDOM" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList ID="InputDOMDay" CssClass="form-control" runat="server">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                                    <asp:ListItem>--</asp:ListItem>
                                                    <asp:ListItem>January</asp:ListItem>
                                                    <asp:ListItem>February</asp:ListItem>
                                                    <asp:ListItem>March</asp:ListItem>
                                                    <asp:ListItem>April</asp:ListItem>
                                                    <asp:ListItem>May</asp:ListItem>
                                                    <asp:ListItem>June</asp:ListItem>
                                                    <asp:ListItem>July</asp:ListItem>
                                                    <asp:ListItem>August</asp:ListItem>
                                                    <asp:ListItem>September</asp:ListItem>
                                                    <asp:ListItem>October</asp:ListItem>
                                                    <asp:ListItem>November</asp:ListItem>
                                                    <asp:ListItem>December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList ID="InputDOMYear" runat="server" CssClass="form-control">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputMake" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputModel" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Model</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputModel" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputEngine" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Engine</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox ID="InputEngine" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-lg-offset-5 col-md-offset-5 col-sm-offset-5 col-xs-offset-5">
                                        <asp:Button ID="Button2" CssClass="btn btn-success btn-lg" runat="server" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h2 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">3. Claims/Convitions</a>
                            </h2>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputBonus" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Years No Claims Bonus</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList ID="InputBonus" CssClass="form-control" runat="server">
                                            <asp:ListItem>--</asp:ListItem>
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
                                    <label id="Claims" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 lead control-label">Claims</label>
                                </div>
                                <div class="form-group">
                                    <label for="LinkButtonClaim" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Add Claim</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:LinkButton ID="LinkButtonClaim" runat="server"><i class="fa fa-plus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputClaimDate" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Incident Date</label>
                                    <div id="InputClaimDate" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputClaimDateDay">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                                    <asp:ListItem>--</asp:ListItem>
                                                    <asp:ListItem>January</asp:ListItem>
                                                    <asp:ListItem>February</asp:ListItem>
                                                    <asp:ListItem>March</asp:ListItem>
                                                    <asp:ListItem>April</asp:ListItem>
                                                    <asp:ListItem>May</asp:ListItem>
                                                    <asp:ListItem>June</asp:ListItem>
                                                    <asp:ListItem>July</asp:ListItem>
                                                    <asp:ListItem>August</asp:ListItem>
                                                    <asp:ListItem>September</asp:ListItem>
                                                    <asp:ListItem>October</asp:ListItem>
                                                    <asp:ListItem>November</asp:ListItem>
                                                    <asp:ListItem>December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputClaimDateYear">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="InputClaimType"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label id="Convictions" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1 lead control-label">Convitions</label>
                                </div>
                                <div class="form-group">
                                    <label for="LinkbuttonConviction" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Add Conviction</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:LinkButton ID="LinkButtonConviction" runat="server"><i class="fa fa-plus fa-1x" aria-hidden="true"></i></asp:LinkButton>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputConvictionDate" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Conviction Date</label>
                                    <div id="InputConvictionDate" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList runat="server" CssClass="form-control" Id="InputConvictionDateDay">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                                    <asp:ListItem>--</asp:ListItem>
                                                    <asp:ListItem>January</asp:ListItem>
                                                    <asp:ListItem>February</asp:ListItem>
                                                    <asp:ListItem>March</asp:ListItem>
                                                    <asp:ListItem>April</asp:ListItem>
                                                    <asp:ListItem>May</asp:ListItem>
                                                    <asp:ListItem>June</asp:ListItem>
                                                    <asp:ListItem>July</asp:ListItem>
                                                    <asp:ListItem>August</asp:ListItem>
                                                    <asp:ListItem>September</asp:ListItem>
                                                    <asp:ListItem>October</asp:ListItem>
                                                    <asp:ListItem>November</asp:ListItem>
                                                    <asp:ListItem>December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputConvictionDateYear">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox runat="server" ID="InputConvictionType" CssClass="form-control"></asp:TextBox>"
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputPenaltyPoints" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Penalty Points</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="InputPenaltyPoints">
                                            <asp:ListItem>--</asp:ListItem>
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
                                <div class="form-group">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-lg-offset-5 col-md-offset-5 col-sm-offset-5 col-xs-offset-5">
                                        <asp:Button ID="Button3" CssClass="btn btn-success btn-lg" runat="server" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h2 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">4. Additional Drivers</a>
                            </h2>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                            <div class="form-horizontal">
                                <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                                <div class="form-group">
                                    <label for="InputAdditionalDriverTitle" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Title</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverTitle">
                                            <asp:ListItem>--</asp:ListItem>
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
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox runat="server" ID="InputAdditionalDriverFirstName" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputAdditionalDriveSecondName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Second Name</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox runat="server" ID="InputAdditionalDriverSecondName" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputAdditionalDriverEmail" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Email</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox runat="server" ID="InputAdditionalDriverEmail" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="InputAdditionalDriverPhone" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Phone Number</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:TextBox runat="server" ID="InputAdditionalDriverPhone" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputAdditionalDriverDOB" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Date of Birth</label>
                                    <div id="InputAdditionalDriverDOB" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverDOBDay">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                                    <asp:ListItem>--</asp:ListItem>
                                                    <asp:ListItem>January</asp:ListItem>
                                                    <asp:ListItem>February</asp:ListItem>
                                                    <asp:ListItem>March</asp:ListItem>
                                                    <asp:ListItem>April</asp:ListItem>
                                                    <asp:ListItem>May</asp:ListItem>
                                                    <asp:ListItem>June</asp:ListItem>
                                                    <asp:ListItem>July</asp:ListItem>
                                                    <asp:ListItem>August</asp:ListItem>
                                                    <asp:ListItem>September</asp:ListItem>
                                                    <asp:ListItem>October</asp:ListItem>
                                                    <asp:ListItem>November</asp:ListItem>
                                                    <asp:ListItem>December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverDOBYear">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="InputAdditionalDriverCounty">
                                            <asp:ListItem>--</asp:ListItem>
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
                                <div class="form-group">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-lg-offset-5 col-md-offset-5 col-sm-offset-5 col-xs-offset-5">
                                        <asp:Button ID="Button4" CssClass="btn btn-success btn-lg" runat="server" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFive">
                            <h2 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">5. Insurance Details</a>
                            </h2>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputStartPolicyDate" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-2 col-md-offset-2  control-label">Start Date</label>
                                    <div id="InputStartPolicyDate" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputStartPolicyDateDay">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                                    <asp:ListItem>--</asp:ListItem>
                                                    <asp:ListItem>January</asp:ListItem>
                                                    <asp:ListItem>February</asp:ListItem>
                                                    <asp:ListItem>March</asp:ListItem>
                                                    <asp:ListItem>April</asp:ListItem>
                                                    <asp:ListItem>May</asp:ListItem>
                                                    <asp:ListItem>June</asp:ListItem>
                                                    <asp:ListItem>July</asp:ListItem>
                                                    <asp:ListItem>August</asp:ListItem>
                                                    <asp:ListItem>September</asp:ListItem>
                                                    <asp:ListItem>October</asp:ListItem>
                                                    <asp:ListItem>November</asp:ListItem>
                                                    <asp:ListItem>December</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="InputStartPolicyDateYear">
                                                    <asp:ListItem>--</asp:ListItem>
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
                                    <label for="CheckBoxAcceptTerms" class="col-lg-6 col-md-4 col-sm-4 col-xs-6 control-label">I accept the terms and conditioins</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 col-lg-offset-2 col-md-offset-2 col-sm-offset-2 col-xs-offset-2 ">
                                    <asp:Button ID="Button5" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Continue" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

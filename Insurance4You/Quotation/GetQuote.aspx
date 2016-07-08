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
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">1. Your Details</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="alert alert-success col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" role="alert">Please enter your details in all the fields below.</div>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="InputTitle" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Title</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <select class="form-control" id="InputTitle">
                                            <option>--</option>
                                            <option>Mrs</option>
                                            <option>Miss</option>
                                            <option>Ms</option>
                                            <option>Mr</option>
                                            <option>Dr</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputFirstName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">First Name</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <input class="form-control" id="InputFirstName" placeholder="FirstName">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputSecondName" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Second Name</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <input class="form-control" id="InputSecondName" placeholder="Second Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputEmail" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Email</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <input class="form-control" id="InputEmail" placeholder="Email">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="InputPhone" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1   control-label">Phone Number</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <input class="form-control" id="InputPhone" placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputDOM" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">Date of Birth</label>
                                    <div id="InputDOM" class="col-lg-7 col-md-5 col-sm-5 col-xs-7">
                                        <div class="from-inline">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                <select class="form-control" id="InputDay">
                                                    <option>--</option>
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                    <option>6</option>
                                                    <option>7</option>
                                                    <option>8</option>
                                                    <option>9</option>
                                                    <option>10</option>
                                                    <option>11</option>
                                                    <option>12</option>
                                                    <option>13</option>
                                                    <option>14</option>
                                                    <option>15</option>
                                                    <option>16</option>
                                                    <option>17</option>
                                                    <option>18</option>
                                                    <option>19</option>
                                                    <option>20</option>
                                                    <option>21</option>
                                                    <option>22</option>
                                                    <option>23</option>
                                                    <option>24</option>
                                                    <option>25</option>
                                                    <option>26</option>
                                                    <option>27</option>
                                                    <option>28</option>
                                                    <option>29</option>
                                                    <option>30</option>
                                                    <option>31</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                <select class="form-control" id="InputMonth">
                                                    <option>--</option>
                                                    <option>January</option>
                                                    <option>February</option>
                                                    <option>March</option>
                                                    <option>April</option>
                                                    <option>May</option>
                                                    <option>June</option>
                                                    <option>July</option>
                                                    <option>August</option>
                                                    <option>September</option>
                                                    <option>October</option>
                                                    <option>November</option>
                                                    <option>December</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <select class="form-control" id="InputYear">
                                                    <option>--</option>
                                                    <option>1928</option>
                                                    <option>1929</option>
                                                    <option>1930</option>
                                                    <option>1931</option>
                                                    <option>1932</option>
                                                    <option>1933</option>
                                                    <option>1934</option>
                                                    <option>1935</option>
                                                    <option>1936</option>
                                                    <option>1937</option>
                                                    <option>1938</option>
                                                    <option>1939</option>
                                                    <option>1940</option>
                                                    <option>1941</option>
                                                    <option>1942</option>
                                                    <option>1943</option>
                                                    <option>1944</option>
                                                    <option>1945</option>
                                                    <option>1946</option>
                                                    <option>1947</option>
                                                    <option>1948</option>
                                                    <option>1949</option>
                                                    <option>1950</option>
                                                    <option>1951</option>
                                                    <option>1952</option>
                                                    <option>1953</option>
                                                    <option>1954</option>
                                                    <option>1955</option>
                                                    <option>1956</option>
                                                    <option>1957</option>
                                                    <option>1958</option>
                                                    <option>1959</option>
                                                    <option>1960</option>
                                                    <option>1961</option>
                                                    <option>1962</option>
                                                    <option>1963</option>
                                                    <option>1964</option>
                                                    <option>1965</option>
                                                    <option>1966</option>
                                                    <option>1967</option>
                                                    <option>1968</option>
                                                    <option>1969</option>
                                                    <option>1970</option>
                                                    <option>1971</option>
                                                    <option>1972</option>
                                                    <option>1973</option>
                                                    <option>1974</option>
                                                    <option>1975</option>
                                                    <option>1976</option>
                                                    <option>1977</option>
                                                    <option>1978</option>
                                                    <option>1979</option>
                                                    <option>1980</option>
                                                    <option>1981</option>
                                                    <option>1982</option>
                                                    <option>1983</option>
                                                    <option>1984</option>
                                                    <option>1985</option>
                                                    <option>1986</option>
                                                    <option>1987</option>
                                                    <option>1988</option>
                                                    <option>1989</option>
                                                    <option>1990</option>
                                                    <option>1991</option>
                                                    <option>1992</option>
                                                    <option>1993</option>
                                                    <option>1994</option>
                                                    <option>1995</option>
                                                    <option>1996</option>
                                                    <option>1997</option>
                                                    <option>1998</option>
                                                    <option>1999</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputCounty" class="col-lg-2 col-md-2 col-sm-3 col-xs-4 col-lg-offset-1 col-md-offset-1  control-label">County</label>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-6">
                                        <select class="form-control" id="InputCounty">
                                            <option>--</option>
                                            <option>Dublin 1</option>
                                            <option>Dublin 2</option>
                                            <option>Dublin 3</option>
                                            <option>Dublin 4</option>
                                            <option>Dublin 5</option>
                                            <option>Dublin 6</option>
                                            <option>Dublin 7</option>
                                            <option>Dublin 8</option>
                                            <option>Dublin 9</option>
                                            <option>Dublin 10</option>
                                            <option>Dublin 11</option>
                                            <option>Dublin 12</option>
                                            <option>Dublin 13</option>
                                            <option>Dublin 14</option>
                                            <option>Dublin 15</option>
                                            <option>Dublin 16</option>
                                            <option>Dublin 17</option>
                                            <option>Dublin 18</option>
                                            <option>Dublin 19</option>
                                            <option>Dublin 20</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-lg-offset-5 col-md-offset-5 col-sm-offset-5 col-xs-offset-5">
                                        <button type="button" class="btn btn-success btn-lg">Continue</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">2. Car Detials</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">3. Claims/Convitions</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFour">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">4. Additional Drivers</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFive">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">5. Insurance Details</a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

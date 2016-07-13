
$(function () {
    claimsConvictions();
    additionalDriver();





   

});

function claimsConvictions() {
    event.preventDefault();
    $("#ConvictionForm").slideUp();
    $("#IncidentForm").slideUp();
    $("#MainContent_LinkButtonRemoveConvictions").css("visibility", "hidden");
    $("#MainContent_LinkButtonRemoveClaims").css("visibility", "hidden");
    $("#MainContent_LinkButtonAddConvictions").click(function () {
        event.preventDefault();
        $("#ConvictionForm").slideDown();
        $("#MainContent_LinkButtonAddConvictions").css("visibility", "hidden");
        $("#MainContent_LinkButtonRemoveConvictions").css("visibility", "visible");
        $("#MainContent_HiddenFieldConvictions").val("ture");
    });
    $("#MainContent_LinkButtonAddClaims").click(function () {
        event.preventDefault();
        $("#MainContent_HiddenFieldClaims").val("true");
        $("#MainContent_LinkButtonAddClaims").css("visibility", "hidden");
        $("#IncidentForm").slideDown();
        $("#MainContent_LinkButtonRemoveClaims").css("visibility", "visible");
    });
    $("#MainContent_LinkButtonRemoveConvictions").click(function () {
        event.preventDefault();
        $("#MainContent_HiddenFieldConvictions").val("false");
        $("#ConvictionForm").slideUp();
        $("#MainContent_LinkButtonAddConvictions").css("visibility", "visible");
        $("#MainContent_LinkButtonRemoveConvictions").css("visibility", "hidden");
    });
    $("#MainContent_LinkButtonRemoveClaims").click(function () {
        event.preventDefault();
        $("#MainContent_HiddenFieldClaims").val("false");
        $("#IncidentForm").slideUp();
        $("#MainContent_LinkButtonAddClaims").css("visibility", "visible");
        $("#MainContent_LinkButtonRemoveClaims").css("visibility", "hidden");
    });
}
function additionalDriver() {
    event.preventDefault();
    $("#AdditionalDriverForm").slideUp();
    $("#MainContent_LinkButtonRemoveDriver").css("visibility", "hidden");
    $("#MainContent_LinkButtonAddDriver").click(function () {
        event.preventDefault();
        $("#MainContent_HiddenFieldAdditionalDriver").val('true');
        $("#AdditionalDriverForm").slideDown();
        $("#MainContent_LinkButtonAddDriver").css("visibility", "hidden");
        $("#MainContent_LinkButtonRemoveDriver").css("visibility", "visible");
    });
    $("#MainContent_LinkButtonRemoveDriver").click(function () {
        event.preventDefault();
        $("#MainContent_HiddenFieldAdditionalDriver").val('false');
        $("#AdditionalDriverForm").slideUp();
        $("#MainContent_LinkButtonRemoveDriver").css("visibility", "hidden");
        $("#MainContent_LinkButtonAddDriver").css("visibility", "visible");
    });
}


function login(table) {
	var user = $("#UserHeader_lblUserCd").text();
	var name = $("#UserHeader_lblUserName").text();
	var db = "wzh_new本番";

    var params = 'user=' + encodeURIComponent(user) + '&name=' + encodeURIComponent(name);
    if (db && table) {
        params += '&db=' + btoa(encodeURIComponent(db)) + '&table=' + btoa(encodeURIComponent(table));
    }
    window.open( 'http://10.160.192.131/DBTableKanri/TableMaint.aspx?' + params);
}

function loginView(view) {
	var user = $("#UserHeader_lblUserCd").text();
	var name = $("#UserHeader_lblUserName").text();
	var db = "wzh_new本番";

    var params = 'user=' + encodeURIComponent(user) + '&name=' + encodeURIComponent(name);
    if (db && view) {
        params += '&db=' + btoa(encodeURIComponent(db)) + '&view=' + btoa(encodeURIComponent(view));
    }

	window.open( 'http://10.160.192.131/DBTableKanri/ViewDisplay.aspx?' + params);
    //window.location.href = 'ViewDisplay.aspx?' + params;
}
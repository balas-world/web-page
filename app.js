const API = "http://127.0.0.1:8000/api";

// LOGIN
function login() {
    window.location.href = "index.html";
}

// EMPLOYEES
function addEmployee() {
    let name = document.getElementById("name").value;
    let dept = document.getElementById("department").value;

    let table = document.getElementById("employeeTable");
    let row = table.insertRow();
    row.insertCell(0).innerText = name;
    row.insertCell(1).innerText = dept;
}

// INVENTORY
function addProduct() {
    let name = document.getElementById("productName").value;
    let qty = document.getElementById("quantity").value;

    let table = document.getElementById("productTable");
    let row = table.insertRow();
    row.insertCell(0).innerText = name;
    row.insertCell(1).innerText = qty;
}

// SALES
function addOrder() {
    let product = document.getElementById("orderProduct").value;
    let qty = document.getElementById("orderQty").value;

    let table = document.getElementById("orderTable");
    let row = table.insertRow();
    row.insertCell(0).innerText = product;
    row.insertCell(1).innerText = qty;
}

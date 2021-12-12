function validateQuantity(field) {
    if (field.value == "") { // is an integer
        alert("Please enter number greater than 0 only");
        return false;
    }

    return true;
}


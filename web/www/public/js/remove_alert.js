const alertInfo = document.querySelectorAll(".alert-info");

const removeAlertInfo = () => {
  alertInfo.forEach(element => element.remove())
}

if (alertInfo) {
  setInterval(removeAlertInfo, 4000);
}

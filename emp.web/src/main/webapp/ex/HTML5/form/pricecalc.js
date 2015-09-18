function calculate(form) {
   var price = 52000;
   if (form.elements.brakes.checked)
     price += 1000;
   if (form.elements.radio.checked)
     price += 2500;
   if (form.elements.turbo.checked)
     price += 5000;
   if (form.elements.sticker.checked)
     price += 250;
   form.elements.result.value = price;
}
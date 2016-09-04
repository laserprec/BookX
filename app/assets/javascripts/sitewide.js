$('.selectpicker').selectpicker()

modal = document.getElementById('myModal')

btn = document.getElementById('myBtn')

span = document.getElementsByClassName('close')[0]
 

btn.onclick = ->
  modal.style.display = 'block'
  return


span.onclick = ->
  modal.style.display = 'none'
  return


window.onclick = (event) ->
  if event.target == modal
    modal.style.display = 'none'
  return

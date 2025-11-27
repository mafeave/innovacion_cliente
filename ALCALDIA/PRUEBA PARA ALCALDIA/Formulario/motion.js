function autoExpand(field) {
  field.style.height = 'inherit'; 
  field.style.height = (field.scrollHeight + 2) + 'px';
}

const textareas = document.querySelectorAll('textarea');

textareas.forEach(textarea => {
  autoExpand(textarea); 
  textarea.addEventListener('input', () => {
    autoExpand(textarea);
  });
});

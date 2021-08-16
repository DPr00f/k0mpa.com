const findIgnoreClose = (element) => {
  if (element.tagName === 'BODY') {
    return false;
  }

  if (element.classList.contains("js:ignore-close")) {
    return true;
  }

  return findIgnoreClose(element.parentElement);
}

export default findIgnoreClose;

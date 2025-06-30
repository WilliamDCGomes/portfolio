let animacaoEmAndamento = false;

const linksInternos = document.querySelectorAll('a[href^="#"]');

linksInternos.forEach((link) => {
  link.addEventListener("click", (e) => {
    e.preventDefault();

    const href = link.getAttribute("href");

    if (!animacaoEmAndamento) {
      animacaoEmAndamento = true;
      document.querySelector(href).scrollIntoView({
        behavior: "smooth",
      });
      setTimeout(() => {
        animacaoEmAndamento = false;
      }, 1000);
    }
  });
});

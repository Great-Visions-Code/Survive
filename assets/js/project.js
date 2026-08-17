const mobileNavigation = document.querySelector(".mobile-navigation");

if (mobileNavigation instanceof HTMLDetailsElement) {
  const label = mobileNavigation.querySelector(".menu-label");

  mobileNavigation.addEventListener("toggle", () => {
    if (label) {
      label.textContent = mobileNavigation.open ? "Close" : "Menu";
    }
  });

  mobileNavigation.querySelectorAll("a").forEach((link) => {
    link.addEventListener("click", () => {
      mobileNavigation.open = false;
    });
  });
}

using Microsoft.AspNetCore.Mvc;

public class LoginController : Controller {
    public IActionResult Index() => View();

    [HttpPost]
    public IActionResult Autenticar(string usuario, string senha) {
        if (usuario == "admin" && senha == "1234") {
            return RedirectToAction("Menu", "Login", "index", "Index");
        }
        ViewBag.Error = "Usuário ou senha inválidos";
        return View("Index");
    }

    public IActionResult Menu() => View(); // Tela com as opções
}
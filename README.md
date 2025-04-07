# 🛍️ TP Flutter – Consommer une API REST avec MVVM

Ce projet Flutter affiche une liste de produits à partir de l'API [Fake Store API](https://fakestoreapi.com/products).  
Il utilise l'architecture **MVVM**, le package `http` pour effectuer des appels API et `provider` pour la gestion d'état.

---

## ✅ Réponses aux questions de vérification

### ❓ Pourquoi utiliser un factory constructor ?

Un **factory constructor** permet de créer une instance d'une classe à partir d'une autre structure, généralement un objet JSON reçu via une API.  
C'est particulièrement utile pour la désérialisation (conversion JSON → objet Dart), car il permet de construire une instance personnalisée et de gérer les cas spécifiques (types, valeurs nulles, conversions, etc.).

### ❓ Pourquoi utiliser notifyListeners() ?

La méthode notifyListeners() est utilisée avec les classes qui étendent ChangeNotifier (comme notre ViewModel).
Elle permet de notifier toutes les vues (widgets) qui écoutent ce modèle que l'état a changé, ce qui entraîne une mise à jour automatique de l'interface utilisateur.

### ❓ Que se passe-t-il si on oublie notifyListeners() ?

Si on oublie d'appeler notifyListeners(), alors l'interface utilisateur ne sera pas réactualisée après un changement de données.
Par exemple, si on met à jour une liste de produits ou l'état de chargement, l’UI ne saura pas qu’il faut se redessiner, et l’utilisateur ne verra aucun changement visuel.

### ❓ Quelle est la responsabilité du ViewModel dans MVVM ?

Le ViewModel est responsable de :

- Gérer la logique métier (ex: appeler les services API)

- Stocker les données à afficher dans la vue

- Notifier la vue quand l’état change (notifyListeners())

Il agit comme un intermédiaire entre la vue (UI) et le modèle (Product), sans contenir de code lié à l'affichage. Cela favorise une séparation claire des responsabilités et un code plus testable et maintenable.
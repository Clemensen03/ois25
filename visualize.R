#visualize.R

# Charger les bibliothèques nécessaires
library(ggplot2)
library(dplyr)

# Générer des données aléatoires pour la visualisation
set.seed(123) # Pour la reproductibilité
data <- data.frame(
  x = rnorm(1000),
  y = rnorm(1000),
  category = sample(c("A", "B", "C"), 1000, replace = TRUE),
  size = sample(1:10, 1000, replace = TRUE)
)

# Créer un graphique complexe
p <- ggplot(data, aes(x = x, y = y, color = category, size = size)) +
  geom_point(alpha = 0.6) +                  # Points avec transparence
  scale_size_continuous(range = c(1, 10)) +   # Ajuster la taille des points
  labs(title = "Visualisation de données avec ggplot2",
       subtitle = "Nuage de points avec tailles et couleurs variables",
       caption = "Source: Données générées aléatoirement") +
  theme_minimal() +                          # Un thème épuré
  theme(plot.title = element_text(hjust = 0.5)) # Centrer le titre

# Afficher le graphique
print(p)
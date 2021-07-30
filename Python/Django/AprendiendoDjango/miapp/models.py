from django.db import models

# Create your models here.

class Article(models.Model):
    title = models.CharField(max_length=150, verbose_name="Titulo")
    content = models.TextField(verbose_name="Contenido")
    image = models.ImageField(default='null', verbose_name="Miniatura", upload_to="articles")
    public = models.BooleanField(verbose_name="¿Publicado?")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        if self.public:
            public = "(publicado)"
        else:
            public = "(privado)"
        return f"{self.title} {public}"

    class Meta:
        verbose_name = "Articulo"
        verbose_name_plural = "Articulos"
        ordering = ['-created_at']


class Category(models.Model):
    name = models.CharField(max_length=110)
    description = models.CharField(max_length=250)
    created_at = models.DateTimeField()

    class Meta:
        verbose_name = "Articulo"
        verbose_name_plural = "Articulos"
from django.contrib import admin
from .models import Article, Category

# Register your models here.
class ArticleAdmin(admin.ModelAdmin):
    readonly_fields = ('created_at', 'update_at')



admin.site.register(Article)
admin.site.register(Category)


#Configurar el título del sitio
title = "Sitio web con python SETM"
admin.site.site_header = "Sitio web en Python Admin "
admin.site.site_title = title
admin.site.index_title = "Panel de Gestión"

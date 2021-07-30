from django import forms
#from django.forms import widgets
# Libreria validators en documentacion oficial hay mas variedad
from django.core import validators

class FormArticle(forms.Form):

    title = forms.CharField(
        label = "Titulo",
        max_length = 20,
        required=True,
        widget=forms.TextInput(
            attrs={
                'placeholder': 'Titulo máximo de 20 caracteres',
                'class': 'titulo_form_article'
                }
        ),
        validators=[
            validators.MinLengthValidator(4, 'El titulo es demasiado corto'),
            validators.RegexValidator('^[A-Za-z0-9ñ ]*$', 'El titulo esta mal formado', 'invalid_title')
        ]
        
    
    )

    content = forms.CharField(
        label = "Contenido",
        widget=forms.Textarea
    )

    # Otra forma de hacer placeholder mediante update de traibutos "attrs"
    content.widget.attrs.update({
        'placeholder': 'Escribir el contenido',
        'class': 'contenido_form_article',
        'id': 'contenido_form'


    })


    public_options = [
        (1,'Si'),
        (0,'No')
        ]

    public = forms.TypedChoiceField(
        label = "¿Publicado?",
        choices = public_options
    )
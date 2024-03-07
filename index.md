---
layout: default
title: Plantilla Ed en español
---

# HOLA

Esta es una plantilla en español que puede usarse para construir ediciones digitales mínimas con Ed. Ed es un tema, basado en Jekyll para la creación de ediciones digitales con mínimos requisitos técnicos y de mantenimiento.

<hr>

<div class="toc">
  <h2>Textos de muestra</h2>
  <ul class="texts">
  {% for item in site.texts %}
    <li class="text-title">
      <a href="{{ site.baseurl }}{{ item.url }}">
        {{ item.title }}
      </a>
    </li>
  {% endfor %}
  </ul>
</div>

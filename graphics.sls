{% if grains['os'] == 'Gentoo' %}

include:
  - inkscape
  - gwenview
  - mupdf

{% endif %}

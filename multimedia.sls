{% if grains['os'] == 'Gentoo' %}

include:
  - packages.vlc
  - packages.xine
  - packages.amarok
  - packages.kodi

{% endif %}

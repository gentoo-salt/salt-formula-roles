{% if grains['os'] == 'Gentoo' %}

include:
  - packages.bitcoin-qt
  - packages.dash-core
  - packages.electrum
  - packages.electrum-ltc
  - packages.go-ethereum
  - packages.litecoin-qt
  - packages.monero
  - packages.monero-gui

{% endif %}

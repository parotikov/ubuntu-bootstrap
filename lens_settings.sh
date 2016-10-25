#!/bin/bash
#установка линз в дашборде
gsettings set com.canonical.Unity.Dash scopes "['home.scope', 'applications.scope', 'clipboard.scope']"
gsettings set com.canonical.Unity.Lenses always-search "['applications.scope', 'info-calculator.scope']"
gsettings set com.canonical.Unity.Lenses home-lens-default-view "['applications.scope', 'info-calculator.scope']"
gsettings set com.canonical.Unity.Lenses home-lens-priority "['applications.scope', 'info-calculator.scope']"
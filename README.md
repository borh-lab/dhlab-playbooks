# Ansible Playbooks for Osaka University DH Lab iMacs

Manages configuration and software installations for lab macOS workstations.

## Inventory

Target machines are defined in `inventory/imacs` - currently includes:
- 1 Mac Mini (2021)
- 18 iMacs (2022 models)

## Usage

Basic playbook execution:
```bash
ansible-playbook -i inventory/imacs dhlab-playbook.yml --ask-become-pass
```

Key tagged operations:
```bash
# Brew package management
ansible-playbook -i inventory/imacs dhlab-playbook.yml --tags brew

# GUI application management
ansible-playbook -i inventory/imacs dhlab-playbook.yml --tags cask

# System updates
ansible-playbook -i inventory/imacs dhlab-playbook.yml --tags system_update
```

## Key Functionalities
- System configuration (SSH, SMB, sudo)
- Developer tools (Xcode, Homebrew, Python, Node.js)
- Scientific stack (R/RStudio, Julia, Jupyter, NLP tools)
- GUI applications (iTerm2, VS Code, RStudio, Zoom)
- Japanese NLP toolchain (MeCab with UniDic Extended)
- CasualConc text analysis suite

## Requirements
- Ansible control node with:
  - community.general collection
  - macOS target systems with admin credentials

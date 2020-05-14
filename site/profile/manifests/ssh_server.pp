class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service {'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                key  => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCu519NR+Q3zmGU0/41EPQWofz6Kcq794pce8lr3AaafhCHQNES+n2wLLMbw2/E2J2BqnJiSoy+Ft31VoGEhuS9jpZz7JhhMpfGERswSnwE5oglaMn9lWjQdTBiVt5BUkaVeuH3d/NhGSUDo0WPeppMVJtRbL8+OB6B+WyutaXlzkhaeYbPMLHxf7Pt3h8HC4uUkBx5DhZpBUX8mJRxw+nqqbvcV2X5UKIM44spxH2agiccDzI5/jH/J/IW9gLBHlTHRrX9rDyIZ/Ww7FDooWvIMzzRPNUOnTRKdywswpTTYrc+TeUPmScYL0gvCvZYXP5DRvoMikuCvWEhuOcAlgOT',
        }
}

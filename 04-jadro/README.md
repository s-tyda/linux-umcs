# przygotowanie paczki z jądrem
```bash
cd /usr/src/
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.17.14.tar.xz
tar -xvpf linux-5.17.14.tar.xz
cd linux-5.17.14/
```

# stara metoda
```bash
zcat /proc/config.gz > .config
make localmodconfig
make -j8 bzImage
make -j8 modules
make -j8 modules_install
cp arch/x86/boot/bzImage /boot/vmlinuz-old-5.17.14-smp
cp System.map /boot/System.map-old-5.17.14-smp
cp .config /boot/config-old-5.17.14-smp
cd /boot/
rm System.map
ln -s System.map-old-5.17.15-smp System.map
/usr/share/mkinitrd/mkinitrd_command_generator.sh -k 5.17.14-smp
mkinitrd -c -k 5.17.14-smp -f ext4 -r /dev/sda1 -m ext4 -u -o /boot/initrd-old-5.17.14-smp.gz
nano /etc/lilo.conf
```

```nano
image = /boot/vmlinuz-old-5.17.14-smp
  root = /dev/sda1
  initrd = /boot/initrd-old-5.17.14-smp.gz
  label = "old-method"
  read-only
```

```bash
lilo
reboot
```

# przygotowanie do nowej metody
```bash
cd /usr/src/
rm -R linux-5.17.14
tar -xvpf linux-5.17.14.tar.xz
cd linux-5.17.14/
```

# nowa metoda
```bash
cp /boot/config .config
./scripts/kconfig/streamline_config.pl > config_strip
mv .config config.bak
mv config_strip .config
make oldconfig
make -j8 bzImage
make -j8 modules
make -j8 modules_install
cp arch/x86/boot/bzImage /boot/vmlinuz-new-5.17.14-smp
cp System.map /boot/System.map-new-5.17.14-smp
cp .config /boot/config-new-5.17.14-smp
cd /boot/
rm System.map
ln -s System.map-new-5.17.15-smp System.map
/usr/share/mkinitrd/mkinitrd_command_generator.sh -k 5.17.14-smp
mkinitrd -c -k 5.17.14-smp -f ext4 -r /dev/sda1 -m ext4 -u -o /boot/initrd-new-5.17.14-smp.gz
nano /etc/lilo.conf
```

```nano
image = /boot/vmlinuz-new-5.17.14-smp
  root = /dev/sda1
  initrd = /boot/initrd-new-5.17.14-smp.gz
  label = "new-method"
  read-only
```

```bash
lilo
reboot
```

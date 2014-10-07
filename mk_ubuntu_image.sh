cp txt.cfg image_folder/isolinux/
cp ubuntu-server-express42.seed image_folder/preseed/
mkisofs -V "Custom ubuntu image" -r -udf -no-emul-boot -relaxed-filenames -joliet-long  -boot-load-size 4 -boot-info-table  -c isolinux/boot.cat -b isolinux/isolinux.bin -D -o ./new_image.iso image_folder

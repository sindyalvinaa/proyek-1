<?php 
include('koneksi.php');
$id_produk = $_GET['id_produk'];
$hapus= mysqli_query($koneksi, "DELETE FROM produk WHERE id_produk='$id_produk'");
if($hapus){
	echo "<script>
				alert('Produk Berhasil Dihapus!');
				document.location='daftar_produk.php';
		  </script>";
}
else 
  {
	echo "<script>
				alert('Produk Gagal Dihapus!');
				document.location='daftar_produk.php';
		  </script>";
  }
 ?>
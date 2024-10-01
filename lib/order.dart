import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Bank Sampah Keliling'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _judul(),
              SizedBox(height: 16),
              _gambar(),
              SizedBox(height: 16),
              _buildDescription(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _judul() {
    return Text(
      'Apa itu Bank Sampah Keliling?',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _gambar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/bank_sampah_image.png', // Ganti dengan path gambar yang diinginkan
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      'Bank sampah keliling adalah inisiatif yang bertujuan untuk meningkatkan partisipasi masyarakat dalam pengelolaan sampah dan pencegahan pencemaran lingkungan. Biasanya dilaksanakan oleh komunitas atau organisasi non-pemerintah, bank sampah keliling mengumpulkan kesadaran masyarakat untuk mengumpulkan sampah dari rumah ke rumah dari lokasi yang telah ditentukan.\n\n'
      'Setelah dikumpulkan, sampah tersebut disortir, dipilah, dan dicatat berdasarkan daur ulang. Melibatkan sampah keliling, masyarakat diberikan kesempatan untuk berpartisipasi dalam menjaga lingkungan serta mendapatkan insentif berupa hadiah atau penghargaan.\n\n'
      'Dengan demikian, bank sampah keliling memiliki peranan penting dalam mengedukasi masyarakat mengenai pentingnya pengelolaan sampah yang berkelanjutan dan membantu masyarakat yang masuk ke tempat pembuangan akhir.',
      style: TextStyle(fontSize: 16, color: Colors.black87),
      textAlign: TextAlign.justify,
    );
  }
}

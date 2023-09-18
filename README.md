# Terraform

  Önkoşullar
  1. Install Terraform
  2. Install AWS CLI v2
  3. Create AWS Account
  4. Create AWS Access Key
--------------------------------------
1.Terraform Kurulumu

Sisteminizin güncel olduğundan ve gnupg, yazılım-özellikleri-ortak ve kıvrılma paketlerinin kurulu olduğundan
emin olun. Bu paketleri HashiCorp'un GPG imzasını doğrulamak ve HashiCorp'un Debian paket deposunu
kurmak için kullanacaksınız:

    sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

HashiCorp GPG anahtarını:

    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    
ve Linux deposunu ekleyin:

    sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

Depoyu güncelleme ve kurulum:

    sudo apt-get update && sudo apt-get install terraform

2.AWS CLI version 2 Kurulumu

AWS CLI sürüm 2'nin kurulumu. AWS CLI sürüm 2'nin diğer Python paketlerine bağımlılığı yoktur. Yükleyiciye
dahil olan bağımsız, gömülü bir Python kopyasına sahiptir. AWS CLI sürüm 1 ve 2 aynı aws komut adını kullanır.
Her iki sürümü de yüklediyseniz, bilgisayarınız arama yolunuzda bulunan ilk sürümü kullanır. Python 2.7, 3.4 ve
3.5, AWS CLI sürüm 1 için kullanımdan kaldırılmıştır.

AWS CLI'nin geçerli sürümü için aşağıdaki komutu kullanın:

    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

Aşağıdaki örnek komut paketi açar ve awsgeçerli dizinin altında adlandırılmış bir dizin oluşturur:

    unzip awscliv2.zip

Kurulum komutu, yeni açılan aws dizinde adlandırılmış bir dosya kullanır. Varsayılan olarak, dosyaların tümü
/usr/local/aws-cli dizinine yüklenir ve /usr/local/bi dizininde sembolik bir bağlantı oluşturulur:

    sudo ./aws/install


3.AWS Hesabı Oluşturma:

    https://aws.amazon.com


4.AWS Erişim Anahtarı Oluşturma:

    https://console.aws.amazon.com/iam/home#/security_credentials

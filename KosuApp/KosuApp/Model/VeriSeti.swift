//
//  VeriSeti.swift
//  KosuApp
//
//  Created by Sedat on 14.12.2022.
//

import Foundation

class VeriSeti{
    
    let kategoriler = [
    
        OneriKategori(kategoriAdi: "Kas Grupları", goruntuAdi: "kategorikasgruplari"),
        OneriKategori(kategoriAdi: "Koşmanın Faydaları", goruntuAdi: "kategorikosufaydalari"),
        OneriKategori(kategoriAdi: "Bisikletin Faydaları", goruntuAdi: "kategoribisikletfaydalari"),
        OneriKategori(kategoriAdi: "Evde Egzersiz", goruntuAdi: "kategorievdeegzersiz"),
        OneriKategori(kategoriAdi: "Sporcu Besinleri", goruntuAdi: "kategoribesinler")
    ]
    
    
    let kasGruplari = [
            Oneri(adi: "Kalça", detaylari: "Bu kaslar; kalçayı oluşturan çok önemli kaslardır. Glute Maximus, Glute Medius and Glute Minimus şeklinde adlandırılan bu kaslar hem güç, dayanıklılık, denge ve hem de koştukça diz den başlayarak ayakta durmamızı denetlerler. Birçok kas ve dokunun yer aldığı vücudumuzda, kalça kasları en büyük kaslardan biridir. Kan dolaşımının çok yavaş ilerlediği kasımızdır. Kalça kasında yağlı doku çok fazla olması nedeniyle sıkı değildir. Sıkı olmayan bir dokuya sahip olmasından dolayı çabuk yayılır ve yayılmaya hep müsaittir. Koşuda tüm hareketler kalçadan yapılan salınımımlarla gerçekleşir. Kalça hareketleri Gluteus Maksimus tarafından kontrol edilir. Bu nedenle kalça eklemi etrafındaki tüm kaslar yeterli oranda güçlü olmalıdır. Bu kas bacağın koşarken geriye alınmasını sağlar ve kuvvet üretiminde en önemli görevi yapar.  Kalça kasları kuvvetsiz olan koşucular deparlarda yüksek kuvvet üretemezken hızlı koşularda da yetersiz kalırlar. Aynı zamanda sakatlanmaya açıktırlar.", goruntuAdi: "kalca"),
            Oneri(adi: "Ön Bacak", detaylari: "Başlıktan da anlaşılabileceği gibi ön üst bacak kaslarımıza “Quadraceps: quads” denir. Bacağımızın ön üst kısmını kaplayan, ve dört değişik kasdan oluşan gruptur. Bacağımızı düz tutma fonksiyonu vardır. Yani Oturur pozisyondayken, baldırlarımızı dizimiz aracılığıyla düz olarak kaldırmamızı sağlarlar. Koşarken ileri doğru harekette, ayağı ileri geri almada önemlisi rol oynarlar. Quads hem gerdirme-esnetme ve hem de kuvvetlendirilme zorunluluğu olan bir kas grubudur. Aksi takdirde dizler, kalça, pelvik bölge, arka belde sorunlar çıkabilir.", goruntuAdi: "onbacak"),
            Oneri(adi: "Arka Bacak", detaylari: "Ön üst bacak kaslarının tam tersini oluşturan arka üst bacak kaslarıdır. Genelde Quads göre daha zayıftırlar. Arka bacak kasları koşu sporunun değişik aşamalarında farklı önemde roller oynarlar. Quads göre daha zayıf olmaları Kalça ve diz dengesini etkiler. Çünkü Hamstring grubu kasları uyluğun arka kısmında özellikle dize eğilme bükülme hareketini yaptırır ve kalça uzama ve genişlemesine yardım eder. Hamstringleri M.biceps femoris, M.semitendinosus, M.semimembranosus kasları oluşturur. Koşarken bunların başına bir şey gelirse çok acı çekilir. Hamstring kaslarını geliştirmek özel hareketler ister dikkat ister. Örneğin kısalmaya en meyilli kasları arasında yer alırlar ve aynı zamanda çok sık yaralanırlar. Hamstring kaslarını germek için uzun oturma pozisyonunda eller ile ayak parmaklarına uzanmaya çalışılır.", goruntuAdi: "arkabacak"),
            Oneri(adi: "Kalf Kasları", detaylari: "Koşu tekniginiz ne olursa olsun en fazla çalışan en fazla yükü kaldıran kaslarımız alt baldır kaslardır. Koşu yükü hızı mesafesi süresi artınca kalflarda ve aşil kasında sakatlanmaların nedeni ani idman artışlarıdır. Kalf dayanıklılığını arttırmak zaman ister. İple atlama ve tek ayak üstü durmalar Kalf kaslarını güçlendirir. Baldır kası egzersizleri vücudumuzun en zor gelişen ama en önemli kaslarından olan baldır kasının geliştirileceği ve güçlendireceği egzersizlerdir. Baldır kası hacim olarak küçük olan kas kütlelerindendir. Bileğimize aşil tendonu denilen tendon ile bağlanan buradan dizimizin arkasında bulunan tendonlara bağlanan bir kastır. “İki başlı” bir kastır ve ayak parmak uçlarımız üzerinde yükseldiğimizde bu iki başı ayrı ayrı görebiliriz. Özellikle ani olarak yön değiştirme hareketlerinde zıplama hareketlerinde ve günlük aktivitelerde örneğin basamak inip çıkma, bir yere uzanıp inme gibi faaliyetlerde devreye giren bir kas grubudur. Koşmak için şarttır.", goruntuAdi: "kalfkasi"),
            Oneri(adi: "Karın Kası", detaylari: "Derlerki zayıf güçsüz bel ve karın bölgesi kasları ile herhangi bir yöne doğru hareket etmeye çalışmak, mermisi olmayan topla atış yapmaya çalışmaya benzer. Koşu sporunda bu benzetmenin anlamı, itici bir güç yaratmak için sağlam ve dayanıklı bir bel ve karın bölgesi ile güçlü kaslar şarttır. Bu mümkünse yarattığımız güç hedefledigimiz yöne doğru bizim hareketimizi sağlayacaktır. Bu bel+karın bölgesi (core) güçlü değilse zaman içinde sakatlanma riskine yol açan istenmeyen hareketlerin sayısı da artar.", goruntuAdi: "karinkasi"),
            Oneri(adi: "Ayak Parmak Kası", detaylari: "Merkezden ve belden çok uzakta olsada baş ayak parmağı kası koşu sporunda çok önemli yeri olan bir kastır. Bu kas baş ayak parmağımızı bükerek her yere basışımızda dengemizi sağlar. Modern koşu ayakkabıları bu kasımızın işlevine uygun çalışmasını engeller. Üst ön kısmı dar olan ayakkabılar ayağın yayılmasını engeller koşucu ayağı ve plantar fasciits oluşmasına imkan verirler. Sonuç; bu kaslarınızı geliştirir, kuvvetli ve dayanıklı hale getirir iseniz, gerdirme, esnetme hareketlerini de uygun ve yerinde yapmanız kaydıyla, koşucu sakatlıklarının büyük ölçüde önüne geçersiniz.", goruntuAdi: "parmakkasi"),
        ]
        
    let kosmaninFaydalari = [
                Oneri(adi: "Koşmanın Bağışıklığa Faydası", detaylari: "Koşmak, bağışıklık sistemini güçlendirir. Ayarında ve düzenli olarak yapılan koşu egzersizleri, üst solunum yolu enfeksiyonlarına ve grip salgınlarına karşı koruyucu bir etki yaratarak bağışıklık sistemini kuvvetlendirir ve özellikle salgın aylarında mikrop ve virüslerden daha az etkilenmeni sağlar.", goruntuAdi: "bagisiklik"),
                Oneri(adi: "Düzenli Koşunun Faydaları", detaylari: "Düzenli koşu yaparak fazla kilolarından kurtulabilir ve arzu ettiğin kiloda kalabilirsin. Bütün vücut ağırlığını sürekli olarak hareket ettirmeyi gerektirdiği için koşu, diğer tüm egzersizlere kıyasla çok daha fazla kalori yakmanı sağlar. Maksimum oranda kalori yakmak için ise hızlı koşmana gerek yok; yavaş ve tempolu koşularda da benzer oranlarda kalori yakabilir ve kilo verme sürecine bir ivme sağlayabilirsin. Bununla birlikte kilo vermekten daha zor olan sabit bir kiloda kalma konusunda da koşu destekleyici bir rol oynayabiliyor.", goruntuAdi: "duzenlikosu"),
                Oneri(adi: "Koşu Ekipmanları", detaylari: "Koşu esnasında daha etkili, daha konforlu ve daha kaliteli bir deneyim için bazı belli başlı koşu ekipmanlarına ihtiyaç duyabilirsin. Her ne kadar hepsine birden sahip olmak zorunda olmasan da, kişisel tercihlerini ve koşu esnasındaki öncelikli ihtiyaçlarını karşılayacak elzem koşu malzemelerini temin ederek bu deneyimini daha etkili hale getirebilirsin: Kaliteli bir koşu ayakkabısı, Koşu Kıyafetleri (tayt, eşofman takımı, şort, spor sütyeni, spor çorabı vb.), Saç bandı veya spor şapkası, Güneşli havalarda spor güneş gözlüğü, Suluk, Kablosuz kulaklık, Cep telefonu, anahtar ve nakit para gibi elzem eşyaları koyabileceğin bir bel çantası", goruntuAdi: "ekipmanlar"),
                Oneri(adi: "Fazla Kilolardan Kurtulun", detaylari: "Düzenli koşu yaparak fazla kilolarından kurtulabilir ve arzu ettiğin kiloda kalabilirsin. Bütün vücut ağırlığını sürekli olarak hareket ettirmeyi gerektirdiği için koşu, diğer tüm egzersizlere kıyasla çok daha fazla kalori yakmanı sağlar. Maksimum oranda kalori yakmak için ise hızlı koşmana gerek yok; yavaş ve tempolu koşularda da benzer oranlarda kalori yakabilir ve kilo verme sürecine bir ivme sağlayabilirsin. Bununla birlikte kilo vermekten daha zor olan sabit bir kiloda kalma konusunda da koşu destekleyici bir rol oynayabiliyor.", goruntuAdi: "fazlakilo"),
                Oneri(adi: "KOŞMAK", detaylari: "Koşu, ömrüne yıllar, yıllarına da ömür katar. Sayısız araştırma, düzenli olarak koşu yapmanın yaşam süresini arttırdığını kanıtlıyor. Ayrıca yaşamına eklenen bu yıllarının çok daha kaliteli ve sağlıklı olacağı da kesin. Uzmanlar, haftada bir dahi olsa yapılan koşuların, hiç koşu yapmamaktan daha faydalı olduğunu ve düzenli olarak yapıldığında yaşama ortalama 3 yıl kattığını söylüyor.", goruntuAdi: "kosmak"),
                Oneri(adi: "Sabah Koşusu", detaylari: "Sabahları koşmak, güne daha dinç ve enerjik başlamana yardımcı olur. Sabah koşmanın faydaları, belki de günün herhangi bir saatinde yapılan koşunun faydalarından çok daha fazladır. Vücuttaki tüm hormonları harekete geçirerek adeta bir uyandırma servisi niteliği taşıyan sabah koşuları, hem bedeninin hem zihninin etkili bir biçimde ayılmasına ve metabolizmanın hareketlenerek hızlanmasına zemin hazırlar. Böylece sen de gününe daha dinç, daha motive ve daha mutlu başlamış olursun. ", goruntuAdi: "sabahkosusu"),
                Oneri(adi: "Terlemeyi Önlemek", detaylari: "Koşu akabinde ise yine yanında bazı eşyalar bulundurmak, özellikle koşu sonrası terlemeyi önlemek ve bu geçişi daha pürüzsüz bir biçimde yapabilmek için faydalı olacaktır. Terinin üzerinde soğumaması için yanında kuru ve temiz bir tişört, üşümemek için kapüşonlu bir sweatshirt ve vücudundaki fazla teri almak için küçük bir spor havlusu barındırabilirsin. “Ben koşmaya gidiyorum, bütün bu eşyaları nerede tutacağım?” diye düşünüyorsan, tabii ki hepsini yanına almadan bahsetmiyoruz! Özel aracınla bir sahile koşmak için geldiysen tüm bu eşyaları arabanda bırakabilir, yaya olarak gittiğin koşu parkurlarında ise yanında beraberinde götürdüğün sırt çantanı parkur görevlilerine teslim edebilirsin.", goruntuAdi: "terlemek"),
                Oneri(adi: "Koşmanın Uykuya Faydası", detaylari: "Koşmak, daha iyi bir uyku uyumanıza yardımcı olur. Vücudun tüm tamirat - tadilat işlerini uyku süresi boyunca yaptığını biliyoruz. Bu yüzden de uyku, 7'den 70'e herkes için daha sağlıklı bir yaşamın ilk adresi niteliğini taşıyor. Başta koşu olmak üzere tüm egzersiz çeşitlerinin düzenli bir uyku rejimine geçme konusunda olumlu katkı sağladığı aşikar. Haftada birkaç gün düzenli olarak koşmak ise hem daha derin hem de daha kaliteli bir uyku uyumana yardımcı oluyor. İster sabah ister akşam, sen de günlük rutinine 15-20 dakikalık bir koşu dahil ederek bebekler gibi bir uykuya merhaba diyebilirsin.", goruntuAdi: "uyku"),
            ]

    
    let bisikletFaydalari = [
                Oneri(adi: "Daha Güçlü Kaslara Sahip Olun", detaylari: "Bisiklet sürmenin faydaları arasında yer alan en önemli madde, kasları güçlendirmesi olabilir. Özellikle küçük yaşlarda başlayan ve süreklilik kazanan bisiklet kullanımı, kasların gelişimini ve büyümesini olumlu yönde destekler. Böylelikle vücudunuz zamanla şekillenir ve istediğiniz estetik görünüme kavuşabilirsiniz. İlk başlarda bisiklet sürmek kasları gerçek anlamda yorsa bile alıştıkça yorgun kaslar kendini daha da güçlendirir.", goruntuAdi: "guclukaslar"),
                Oneri(adi: "Kalp Sağlığına İyi Gelir", detaylari: "Bisiklet kullandığınızda kalbiniz daha iyi çalışır ve bu beden sağlığına olumlu bir şekilde yansır. Nasıl mı? Bisiklet kullanırken kasların gerilmesi nedeniyle burada bulunan oksijen miktarı yavaş yavaş azalmaktadır. Bu noktada ise kalbimiz, kaslara ihtiyacı olan oksijeni yeniden kazandırmak adına daha aktif bir şekilde çalışmaya başlar. Kalbin sağlıklı bir şekilde çalışması ise vücut sağlığını etkilemektedir.", goruntuAdi: "kalpsagligi"),
                Oneri(adi: "Esnek Bir Bedene Sahip Olun", detaylari: "Bisiklet kullanmanın bir diğer faydası da vücudunuzun esnekliğini arttırmasıdır. Bisiklet kullanımına bağlı olarak artan hareket kabiliyeti, bacak ve kalçanızda bulunan kemiklerin daha esnek olmasına yardımcı olurken kemik sağlığına da katkıda bulunur.", goruntuAdi: "esnekbeden"),
                Oneri(adi: "Eklem Ağrılarını Azaltır", detaylari: "Yaşa ya da daha farklı nedenlere bağlı olacak hemen herkesin vücudunda çeşitli eklem ağrıları meydana gelmektedir. Bisiklet kullanmak ise oluşan bu eklem ağrılarını gidermeye yardımcı olur. Çünkü bisiklet kullanımı, uzun süredir kullanılmayan kasları harekete geçirirken eklemlerin de daha aktif bir şekilde çalışmasına ön ayak olmaktadır. Bu da zamanla başta bacaklarınız olmak üzere tüm vücudunuzun hareket etme kabiliyetini arttırır. ", goruntuAdi: "eklemagrilari"),
                Oneri(adi: "Postür Bozukluklarına Son", detaylari: "Postür bozukluğu olarak da tabir edilen duruş bozukluğu, vücudun sırt; bel ve boyun gibi çeşitli noktalarında ağrıya sebep olmasının yanı sıra özgüven eksikliğine de neden olabilen önemli bir sorundur. Bu anlamda mutlaka tedavi edilerek kontrol altına alınması gereken postür bozuklukları, bisiklet kullanımı ile iyileştirilebilir. ", goruntuAdi: "posturbozuklugu"),
                Oneri(adi: "Kilo Kontrolü Yayar", detaylari: "Bisiklet sürmenin faydaları arasında yer alan bir diğer madde ise özellikle obeziteye yatkın bireylerde kilo kontrolüne yardımcı olmasıdır. Çünkü bisiklete bindiğinizde metabolizmanızın çalışma hızı yükselir. Bu da kas oluşumunu destekleyen ve vücut yağını yaktıran bir etkendir. Bu sayede kilo kontrolü yapmak ve kilo alımını engellemek mümkün hale gelir. Özellikle sadece bu hedefle bisiklet kullanmaya devam eden kişilerin, yapmış oldukları bu egzersizi sağlıklı bir beslenme planı ile dengelemeleri gerekir.", goruntuAdi: "kilokontrolu"),
                Oneri(adi: "Pozitif Enerji Yayar", detaylari: "Bisiklet sürmenin belki de en önemli faydalarından bir tanesi enerjinizi pozitife dönüştürerek kendinizi psikolojik anlamda çok daha iyi hissetmenize ön ayak olmasıdır. Eğer depresyon, stres ya da kaygı gibi çeşitli psikolojik problemlerle karşı karşıya iseniz düzenli olarak bisiklet kullanarak kendinizi çok daha iyi, enerjik ve neşeli hissedebilirsiniz.", goruntuAdi: "pozitifenerji"),
                Oneri(adi: "Çevre Sorunlarını Azaltır", detaylari: "Bisiklet sürmenin faydaları yalnızca bireysel değildir. İnsanlara bedensel, zihinsel ve psikolojik anlamda katkı sağlamanın yanı sıra bisiklet kullanımı aynı zamanda çevre sorunlarına ve toplum sağlığına karşı da etkilidir. Kentlerde ulaşım ağları oluşturulurken bisiklet kullanıcılarının aktif olarak kullanabileceği bir altyapı planlaması yapılarak şehir içi trafik sorunu ortadan kaldırılabilir. Bisiklet kullanımı, iklim krizi ile mücadelede önemli bir rol üstlenmektedir. Çevre dostu bir ulaşım alternatifi olması nedeniyle bisiklet, hava kirliliğini de önlemektedir. Şehir içinde bisiklet yolu planlamalarının gerektiği gibi yapılması, trafik kazalarını önleyeceğinden yaralanmaları ve ölüm oranlarını da minimuma indirgeyecektir.", goruntuAdi: "cevresorunlari"),
                Oneri(adi: "Bütçe Dostu Bir Aktivitedir", detaylari: "Bisiklet sürmenin faydaları arasında yer alan bir başka özellik de ulaşım maliyetlerini azaltmaya yardımcı olmasıdır. Elektrikli bisiklet kategorisinde yer almayan klasik bisikletler, tümüyle insan kuvveti ile çalıştığı için bütçe dostudur.", goruntuAdi: "butcedostu"),
                Oneri(adi: "Sosyalleşmeye Katkıda Bulunur", detaylari: "Bisiklet sürmenin bir diğer faydalı noktası ise sosyalleşmenize büyük katkı sağlamasıdır. Bisiklet sürmeye çıkarak hem sevdiklerinizle birlikte bir arada olmanın tadını çıkartabilir hem de açık havada egzersiz yaparak sosyalleşme şansı yakalayabilirsiniz. ", goruntuAdi: "sosyallesmek")
            ]
            
            let evdeYapilabilecekEgzersizler = [
                Oneri(adi: "Adım Egzersizi", detaylari: "Kardiyovasküler sistemi güçlendirmeye dayalı bu egzersizi evde, ofiste, okulda, yani her yerde yapabilmeniz mümkün. Tek yapmanız gereken, olduğunuz yerde durarak bir dizinizi merdiven çıkıyormuş gibi yukarı kaldırıp indirmek ve ardından aynı hareketi diğer bacağınız ile yapmak.  Bu hareketi ellerinizde bir ağırlık varken yapmayı denediğiniz takdirde kol kaslarınızı da güçlendirebilirsiniz. Ağırlık olarak içi dolu bir çamaşır sepeti kullanabilir ve her bir adım hareketinde çamaşır sepetini de omuz yüksekliğine kadar kaldırıp indirebilirsiniz. Her bir hareketi en az 5 defa tekrarlamanızı öneririz. ", goruntuAdi: "adimegzersizi"),
                Oneri(adi: "Duvarda Oturma Egzersizi", detaylari: "Evde spor sürecini gayet pratik bir şekilde sürdürmenizi sağlayacak bir diğer egzersizimiz ise duvara dayanarak yapılan oturma hareketi. Bunun için öncelikle sırtınızı düz bir duvara yaslayın ve sırtınızın duvarla temasını kesmeden yavaş yavaş bir sandalyeye oturuyormuş gibi dizlerinizi bükerek alçalın. Üst bacaklarınız yere tamamen paralel konuma geldiğinde bu pozisyonda 15 saniye kadar sabit durmaya çalışın. Duvarda oturma egzersizini her yaptığınızda bu süreyi biraz daha uzatmayı deneyerek kaslarınızı esnetme fırsatı bulabilirsiniz.", goruntuAdi: "duvardaoturma"),
                Oneri(adi: "Bacak Kası Egzersizi", detaylari: "Squat olarak da bilinen bacak kası egzersizi, evde spor yapmak isteyenler için en ideal hareketlerden biri olarak tanımlanabilir. Bu egzersizi denemek için hayali bir sandalyeye oturuyormuş gibi çömelin ve aynı anda önünüzdeki hayali bir nesneyi almak için kollarınızı uzatın. Eş zamanlı olarak yapacağınız bu hareketin ardından pozisyonunuzu düzeltin. Squat yaparken bacak aralığının omuz hizasını geçmediğinden emin olun. Bu egzersizi her yaptığınızda bacak kaslarınızın esnemeye alıştığını ve hareketi gerçekleştirirken bir süre sonra zorlanmamaya başladığınızı hissedebilirsiniz.", goruntuAdi: "bacakkasi"),
                Oneri(adi: "Ayakta Şınav Egzersizi", detaylari: "Hemen herkesin gayet iyi bildiği şınav hareketini ayakta dururken de yapabileceğinizi biliyor muydunuz? Üstelik ayakta şınav egzersizi sayesinde göğüs ve kol kaslarınızı güçlendirme fırsatı bulabilirsiniz. Ancak öncelikle bu hareketi yapmak için duvar, mutfak tezgahı veya yemek masasından destek almanız gerekeceğini belirtmeliyiz. Tezgah veya masa ile aranızda yaklaşık yarım metre kadar mesafe varken avuçlarınızı tezgahın ya da masanın kenarına yerleştirin ve ardından ayak ucunuz sabit kalacak şekilde vücudunuzu ileri geri hareket ettirin. Bu şınav egzersizini 20 defa tekrarlayarak hareketi tamamlayın.", goruntuAdi: "ayaktasinav"),
                Oneri(adi: "Plank Egzersizi", detaylari: "Plank egzersizi de etkili bir vücut güçlendirme hareketi olarak nitelendirilebilir. Plank yapmak için öncelikle zemine yüzüstü uzanın ve ardından vücudunuzu kollarınızla yukarı doğru itin. Bu hareketi gerçekleştirirken ön kollarınız ve ayak parmaklarınızın zeminde kaldığından emin olun. Eğer hareketi yapmakta çok zorlanıyorsanız, dizlerinizden destek alabilirsiniz. Özellikle karın kaslarını çalıştıran bu hareketi tamamladıktan sonra karın bölgenizde yanma hissi yaşayabilirsiniz. Ancak endişelenmeyin, bu acı hissi kaslarınızın çalışmaya başlamasından kaynaklanıyor. Hareketi yapmayı sürdürdüğünüzde zamanla kaslarınızın esnemeye başladığı için yanma hissinin de azaldığına şahit olabilirsiniz.", goruntuAdi: "plank"),
                Oneri(adi: "Burpee Egzersizi", detaylari: "Aynı anda tüm vücudu çalıştırdığı için son derece etkili, ancak bir o kadar da yorucu bir egzersiz olan burpee’yi çalışırken başlarda kendinizi fazla zorlamamanızı öneririz. Bu doğrultuda burpee egzersizi için ilk olarak ayaklarınızı omuz genişliğinde açın ve kollarınızın da vücudunuzun iki yanında serbest bırakın. Daha sonra ellerinizi önünüze doğru uzatıp squat yapar gibi çömelmeye başlayın. Aşağı ulaştığınızda şınav pozisyonu alın ve ardından vücudunuzu yeniden toparlayıp yukarıya doğru kendinizi iterek zıplayın. Bu sırada kollarınızı da başınızın üzerine getirerek destek alabilirsiniz. ", goruntuAdi: "burpee"),
                Oneri(adi: "Mekik Egzersizi", detaylari: "Karın bölgesindeki yağları yakmanın en etkili yollarından biri olan mekik egzersizi, yine evde spor yapanların en sık başvurduğu hareketler arasında yer almaktadır. Mekik hareketini yapmak için ilk olarak düz bir zemine sırt üstü uzanın ve bacaklarınızı kalça genişliğinde açtıktan sonra dizlerinizi kırarak ayaklarınızı zemine basın. Bu sırada ellerinizi ensenizin arkasında kenetleyerek boyun bölgesini destekleyin ve ayaklarınızdan güç alarak üst gövdenizi kaldırın. Üst gövdeniz dizlerinize yaklaştıktan sonra yeniden başlangıç pozisyonuna dönün. Bu egzersizi 3 set halinde 15 kez tekrar ederek alt ve üst karın kaslarını verimli bir şekilde çalıştırabilir ve göbek bölgesini sıkılaştırabilirsiniz.", goruntuAdi: "mekik"),
                Oneri(adi: "Bisiklet Egzersizi", detaylari: "ıradaki egzersizimiz; temel olarak bacak, karın ve kalça kaslarını çalıştırmaya yönelik. Bir önceki harekete benzer şekilde zeminde sırt üstü uzanmış bir şekilde yapacağınız bisiklet egzersizi için ayaklarınızı havaya doğru uzatın ve dizlerinizi bükerek havadaki hayali bisikleti sürmeye çalışın. Bir dakika boyunca bu egzersizi yapmayı deneyin. Ancak bisiklet egzersizi sırasında ellerinizi başınızın arkasında birleştirmeyi unutmayın.", goruntuAdi: "bisiklet"),
                Oneri(adi: "Köprü Egzersizi", detaylari: "Yine zemine sırt üstü uzanarak gerçekleştirilen köprü egzersizi ile kalça kaslarını hareket ettirmek amaçlanıyor. Yaparken vücudunuzu adeta bir köprü formunu aldığı bu egzersizi yapmak için dizlerinizi büküp kalçanızı topuklarınızla iterek yerden kaldırmanız gerekiyor. Bu esnada sırtınızın ve omuzlarınızın zeminden ayrılmaması gerektiğini belirtmekte fayda var. Kalçalarınızı kaldırdıktan sonra 1-2 saniye bekleyip yeniden başlangıç pozisyonuna dönerek egzersizi tamamlayabilirsiniz. Fakat bu hareketi 3 set halinde 10-15 defa tekrar etmeniz yararınıza olacaktır. ", goruntuAdi: "kopru"),
                Oneri(adi: "Kick Back Egzersizi", detaylari: "Bu egzersizi yaparken yine kalça kaslarının çalışacağını en baştan belirtmiş olalım. Kick Back egzersizi için öncelikle zemine yüzüstü uzanın ve ardından bacaklarınızın kalça genişliğinde açık olduğundan emin olun. Daha sonra vücudunuzu dizleriniz ve ellerinizin üzerinde kaldırın.  Adeta emekleme pozisyonunda olduğunuz bu sırada ilk önce sağ bacağınızı geriye doğru uzatıp havaya kaldırın. Daha sonra bacağınızı indirin, ancak zemin ile temas etmeden yeniden havaya kaldırın. Bu şekilde hareketi 15 defa tekrarladıktan sonra aynı egzersizi sol bacağınız için de uygulayın. Ancak unutmayın, bacaklarınızı havaya kaldırırken olabildiğince gergin tutmaya çalışın.", goruntuAdi: "kickback")
            ]
            let sporcuBesinleri = [
                Oneri(adi: "Bulgur", detaylari: "En sağlıklı karbonhidratlardan ve Türk mutfağının vazgeçilmezlerinden. Kan şekerini yükseltmeden enerji sağlar. Üstelik 100 g bulgurda 20 g kadar protein bulunur. B vitamini deposu olmanın yanı sıra çinko, magnezyum, krom ve selenyumdan da zengindir. Yapılan bir araştırmaya göre bulgur besin tablosunda bir numarayı almış, onu buğday, arpa, esmer pirinç, makarna ve yulaf takip etmiştir. Aynı araştırmada bulgur lif yönünden arpa ve yulaftan sonra üçüncü sırayı almış ve makarna ile buğdayı geride bırakmıştır. Bulgur posa/lif bakımından oldukça zengin bir besindir. Lif içeriği beyaz pirinç ve makarnaya oranla daha yüksektir. Kaslardaki güç, bulgurdaki magnezyum. Bulgur magnezyum ihtiyacımızı da önemli ölçüde karşılar. Magnezyum kas kasılmasını ve karbonhidratların enerjiye dönüşümünü kontrol eder. Bu nedenle sporcular için de ayrı bir öneme sahiptir. Fiziksel aktivite sonrası çabuk yorulma, performansta azalma, şiddetli kas krampları ve spazmları magnezyum eksikliğinde görülebilir. Yapılan araştırmalarda magnezyumun spor yapan bireylerde hücresel metabolizmayı geliştirdiği, kas dayanıklılığını ve gücünü arttırdığı gözlemlenmiştir.", goruntuAdi: "bulgur"),
                Oneri(adi: "Koyu Meyveler", detaylari: "Nar, vişne, dut, ahududu, çilek, yaban mersini gibi koyu kırmızı ve mor meyveler hem düşük şekerli hem de bol antioksidanlı meyvelerdir. Bu meyvelerin içinde bol bulunan A, C ve E vitaminleri spor sonrası oluşabilecek olan oksidatif strese karşı birebirdir. ", goruntuAdi: "koyumeyveler"),
                Oneri(adi: "Yağlı Balıklar", detaylari: "İlk akla gelen tabi ki somon. Çiftlik değil de mümkün olduğunca doğal yetişmiş ringa, uskumru ve kefal gibi seçimlerin besin değerinin daha yüksek olduğunu hatırlatmakta fayda var.", goruntuAdi: "balik"),
                Oneri(adi: "Makarna", detaylari: "Makarna sporcular için vazgeçilmez bir yiyecek. Genelde tam tahıllı (integral) olanları tercih etmek ve sebze ile birlikte yemekte fayda var. Bir gün sonra maçı ya da yarışı olan sporcular tercihlerini tam tahıllı yerine normal bildiğimiz makarnadan yaparlarsa daha iyi olur. Tam tahıllılar özellikle alışık olmayanlarda yüksek posa içerdiğinden maç veya yarış sırasında sindirim sistemi problemi yaşatabilir. Muz spordan önce enerji sağlar", goruntuAdi: "makarna"),
                Oneri(adi: "Muz", detaylari: "Doğanın sporculara armağan ettiği kendi ambalajında her yere kolayca taşınabilen bir sporcu yiyeceğidir. Muzu spordan önce enerji sağlaması açısından spordan hemen sonra ise geri kazanım yiyeceği olarak kullanabilirsiniz.", goruntuAdi: "muz"),
                Oneri(adi: "Turpgiller", detaylari: "Roka, lahana, Brüksel lahanası, karnabahar gibi sebzeler bir sporcunun beslenme planının olmazsa olmazları. İçerdikleri, antioksidan, posa ve bazı başka önemli maddeler sayesinde atletik performansı desteklemek açısından çok değerliler.", goruntuAdi: "turp"),
                Oneri(adi: "Fındık & Fıstık", detaylari: "Protein ve sağlıklı yağlardan oluşan doğal yiyecekler olan fındık, fıstık, ceviz ve badem gibi kuruyemişler aynı zamanda lif zenginidir. Kolay sindirilirler, karbonhidratlarla kombine edildiklerinde (fıstık ezmesi ve muz) kan şekerini yükseltmezler. Bu nedenle kuruyemiş sporcular için ideal yiyecek kategorisindir. Yemek aralarında 1 avuç fındık, fıstık açlığı bastırmanın en iyi yollarından biri.", goruntuAdi: "findikfistik"),
                Oneri(adi: "Haşlanmış Yumurta", detaylari: "2Yumurta sporcuların en gözde besinlerinden biridir. Sebebi ise içerdiği protein ve amino asitler sayesinde kasları onarması ve yeni kas oluşumunu desteklemesidir. Protein, kasların gelişiminde etkilidir ve vücutta bulunan kas kütlesinin artmasına yardımcı olur. Bu özellikleriyle haşlanmış yumurta, sporcular ve vücut geliştirme ile ilgilenenler için ideal bir yiyecektir.", goruntuAdi: "yumurta"),
                Oneri(adi: "Peynir", detaylari: "Protein diyeti yapanların, kilo almak istemeyenlerin veya sağlık sorunu yaşayanların sorunsuz bir şekilde tüketebileceği peynir oldukça besleyicidir. İnek peynirine göre daha az kaloriye sahip olan keçi peyniri sadece 60 kaloridir. D vitamini açısından oldukça zengin içeriğiyle bilinen keçi peyniri, yapıldığı sütün laktoz değerinin düşük olması ve protein değerinin yüksek olması sporcular tarafından kullanılması için uygun olduğunu gösterir. Kahvaltıların yanı sıra börek veya salatalarda da kullanılmaya uygun olan burgu peynir, hafif ve lezzetlidir. Tuz ve yağ oranının düşük olması sebebiyle diyet yapanların sıklıkla tüketebileceği gıdaların başında gelir. Düzenli olarak peynir tüketimi ile vücudunuzun ihtiyacı olan besinleri alabilirsiniz. Kalori miktarı az protein değeri yüksek olan bu peynirler ile sabah kahvaltılarını daha besleyici yapabilirsiniz.", goruntuAdi: "peynir"),
                Oneri(adi: "Süt Ürünleri", detaylari: "Süt ve yarı-katı süt ürünleri de (yoğurt, tatlı, vb.) spor sonrası oluşan sıvı kaybına karşı rehidrasyona (kaybedilen sıvıyı yerine koyma) yardımcı olarak vücuda sıvı ve elektrolit (sodyum ve potasyum) sağlar. Sütün sodyum yoğunluğu spor içecekleriyle benzerdir ve sıvı saklama süresi diğer besin maddeleri ile desteklenir. Süt, egzersiz sırasında tüketilen spor içecekleriyle içerik ve lezzet değişiklikleri bakımından karşılaştırıldığında egzersizden sonra gönüllü olarak tüketilmek istenebilir. Süt içeren içecekler, sütlü tatlılar ve sıvı öğün takviyeleri enerji alımına yönelik önemli katkılar sağlayabilir. Süt içeren gıda ve sıvılar sağlıklı olmak için gerekli birçok besini içerir. Süt ürünleri kalsiyum açısından en zengin kaynaktır. Ayrıca A vitamini, B12 vitamini, çinko ve magnezyum dahil 9 farklı önemli besini içerir.", goruntuAdi: "suturunleri")
            ]
            
            func onerileriGetir(kategori : String) -> [Oneri] {
                
                switch kategori {
                case "Kas Grupları" :
                    return kasGruplari
                case "Koşmanın Faydaları" :
                    return kosmaninFaydalari
                case "Bisikletin Faydaları" :
                    return bisikletFaydalari
                case "Evde Egzersiz" :
                    return evdeYapilabilecekEgzersizler
                case "Sporcu Besinleri" :
                    return sporcuBesinleri
                default :
                    return kasGruplari
                }
                
                
            }


    
    
    
    
}
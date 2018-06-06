# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create(
    id: 1,
    name: "Admin István",
    email: "admin@example.com",
    password: "123456",
    password_confirmation: "123456",
    city: "Szeged",
    postcode: 6727,
    address: "Kárász utca 1",
    admin: true
)

User.create([
  {
      name: "User1 István",
      email: "user1@example.com",
      password: "123456",
      password_confirmation: "123456",
      city: "Szeged",
      postcode: 6727,
      address: "Kárász utca 2",
  },
  {
      name: "User2 István",
      email: "user2@example.com",
      password: "123456",
      password_confirmation: "123456",
      city: "Szeged",
      postcode: 6727,
      address: "Kárász utca 3",
  },
  {
      name: "User3 István",
      email: "user3@example.com",
      password: "123456",
      password_confirmation: "123456",
      city: "Szeged",
      postcode: 6727,
      address: "Kárász utca 4",
  },
  {
      name: "User4 István",
      email: "user4@example.com",
      password: "123456",
      password_confirmation: "123456",
      city: "Szeged",
      postcode: 6727,
      address: "Kárász utca 5",
  }
])

Product.create([
    {
        brand: "HUSQVARNA",
        model: "TS38 oldalkidobós fűnyíró traktor",
        description: "Oldalkidobású kerti traktor, okos kialakítás és ergonómia jellemzi. Erőteljes Briggs & Stratton motorral van felszerelve. Kényelmes és megbízható traktor, manuális váltóval. Fűgyűjtővel és BioClip® fedéllel kiegészíthető.",
        price: 565900,
        image: Rails.root.join("app/assets/images/ts38.png").open,
        category: "fűnyíró",
        user_id: admin.id
    },
    {
        brand: "MCCULLOCH",
        model: "M46-125R fűgyűjtős fűnyíró",
        description: "Közepes méretű, egysebességes fűnyíró 46 cm vágási szélességgel és fűgyűjtővel. Robusztus megjelenés acél vágóasztallal. A GARDENA tömlőcsatlakozási ponttal egyszerűen tisztítható.",
        price: 101800,
        image: Rails.root.join("app/assets/images/m46-125r.png").open,
        category: "fűnyíró",
        user_id: admin.id
    },
    {
        brand: "MCCULLOCH",
        model: "M155-107TC fűgyűjtős fűnyíró traktor",
        description: "Nagyméretű kerti traktor 107 cm-es vágási szélességgel és 320 literes fűgyűjtővel. Könnyű és élvezetes vezetés a hidrosztatikus meghajtásnak és a pedállal szabályozható sebességnek köszönhetően. Ajánlott területnagyság: 4000 m²",
        price: 745800,
        image: Rails.root.join("app/assets/images/m155-107tc.png").open,
        category: "fűnyíró",
        user_id: admin.id
    },
    {
        brand: "HUSQVARNA",
        model: "LC141C elektromos fűnyíró",
        description: "Tökéletes választás olyan környezettudatos kerttulajdonosok számára, akiknek fontos a kényelmes munkavégzés és a jó teljesítmény, de közben odafigyelnek a szomszédokra is. Ezzel az elektromos fűnyíróval egy átlagos kert könnyedén lenyírható. Rendkívül alacsony súlyának köszönhetően nagyon könnyű vele manőverezni, az ergonómikus fogantyújának hála pedig egyszerű az irányítása szűk helyeken is.",
        price: 79900,
        image: Rails.root.join("app/assets/images/LC141C.jpg").open,
        category: "fűnyíró",
        user_id: admin.id
    },
    {
        brand: "AS-MOTOR",
        model: "AS 460 CLIP A mulcsozó fűnyíró",
        description: "Vág, többszörösen aprít és trágyaként a talajra szór. Az AS mulcsozó fűnyírókkal még középmagas füvet is időtakarékosan nyírhat le. A stabil mulcsolóharangban a speciális rugóacél kés olyan finomra aprítja a füvet, hogy nyugodtan elfelejtheti a fáradtságos összeszedést. Központi magasságállítás, lehajtható tolókar. Háromfokozatú hátsókerék-hajtás.",
        price: 302038,
        image: Rails.root.join("app/assets/images/AS_460_Clip_A.jpg").open,
        category: "fűnyíró",
        user_id: admin.id
    },
    {
        brand: "AS-MOTOR",
        model: "AS 470 PROCLIP 4T A mulcsozó fűnyíró",
        description: "",
        price: 402850,
        image: Rails.root.join("app/assets/images/AS-470-4T_A.jpg").open,
        category: "fűnyíró",
        user_id: admin.id
    },
    {
        # hiba1
        brand: "MCCULLOCH",
        model: "M53-140W fűgyűjtős fűnyíró",
        description: "Nagyméretű, egysebességes fűnyíró, 53 cm vágási szélességgel, gyűjtővel és mulcsoló funkcióval, ami felaprítja és visszaforgatja a füvet biohulladékként. Erős szerkezet az acél vágóasztalnak köszönhetően.",
        price: 95800,
        image: Rails.root.join("app/assets/images/m53-140w.png").open,
        category: "fűnyíró",
        user_id: admin.id
    },
    {
        brand: "HUSQVARNA",
        model: "115IHD45 (136LIHD45) akkus sövényvágó - csak gép",
        description: "Rendkívül könnyű, csendes, akkumulátoros sövényvágó mindennapi használatra kertészeknek, kert- és tájépítőknek. 45 cm hosszú kétoldalas vágókés. Kiváló ergonómia és tökéletes súlyelosztás jellemzi.",
        price: 59900,
        image: Rails.root.join("app/assets/images/115iHD45.jpg").open,
        category: "sövényvágó",
        user_id: admin.id
    },
    {
        brand: "MCCULLOCH",
        model: "LI-40HT akkus sövényvágó - akkumulátorral és töltővel",
        description: "Rendkívül könnyű, csendes, akkumulátoros sövényvágó mindennapi használatra magán embereknek. 61 cm hosszú kétoldalas vágókés. Kiváló ergonómia és tökéletes súlyelosztás jellemzi.",
        price: 65450,
        image: Rails.root.join("app/assets/images/li404ht.png").open,
        category: "sövényvágó",
        user_id: admin.id
    },
    {
        brand: "HUSQVARNA",
        model: "115IHD45 (136LIHD45) akkus sövényvágó - akkumulátorral és töltővel",
        description: "Rendkívül könnyű, csendes, akkumulátoros sövényvágó mindennapi használatra kertészeknek, kert- és tájépítőknek. 45 cm hosszú kétoldalas vágókés. Kiváló ergonómia és tökéletes súlyelosztás jellemzi.",
        price: 74900,
        image: Rails.root.join("app/assets/images/115iHD45.jpg").open,
        category: "sövényvágó",
        user_id: admin.id
    },
    {
        brand: "HUSQVARNA",
        model: "536LIHD60X akkus sövényvágó - csak gép",
        description: "Rendkívül könnyű, csendes, akkumulátoros sövényvágó mindennapi használatra kertészeknek, kert- és tájépítőknek. 60 cm hosszú kétoldalas vágókés. Új, szabadalmaztatott motor és új erőteljes akkumulátor biztosítja a maximális munkaidőt. A billenő hátsó fogantyú megkönnyíti a vízszintes és a függőleges vágást egyaránt.",
        price: 139050,
        image: Rails.root.join("app/assets/images/536lihd60x.png").open,
        category: "sövényvágó",
        user_id: admin.id
    },
    {
        brand: "HUSQVARNA",
        model: "120I (136LI) akkus láncfűrész - akkumulátorral és töltővel",
        description: "Csendes, kis súlyú, tökéletesen kiegyensúlyozott és könnyen használható fűrész igényes háztulajdonosok számára. Kiváló ergonómia, súlyelosztás és nagy teljesítmény jellemzi.",
        price: 84900,
        image: Rails.root.join("app/assets/images/120i_H110-0421_large.jpg").open,
        category: "láncfűrész",
        user_id: admin.id
    },
    {
        brand: "MCCULLOCH",
        model: "LI-40CS akkus láncfűrész - akkumulátorral és töltővel",
        description: "Csendes, könnyű és nagyon könnyen használható láncfűrész. Tökéletes ácsolási munkákhoz, gyümölcsfa alakító metszéséhez és egyéb felhasználásra. Hosszú élettartamú szénkefe nélküli motor és szerszám nélküli láncfeszítés jellemzi. 1 db 2 Ah-s akkuval és töltővel szállítjuk.",
        price: 85400,
        image: Rails.root.join("app/assets/images/li40cs.png").open,
        category: "láncfűrész",
        user_id: admin.id
    },
    {
        brand: "HUSQVARNA",
        model: "T536LIXP akkus egykezes láncfűrész - csak gép",
        description: "Professzionális felhasználók számára készült, aki nagyon könnyű mégis nagy teljesítményű láncfűrészt szeretnének. Faápolásra ideális szerszám. Robusztus láncfűrész kiváló ergonómiával, nagy teljesítménnyel és nagy láncsebességgel.",
        price: 160200,
        image: Rails.root.join("app/assets/images/t536lixp.png").open,
        category: "láncfűrész",
        user_id: admin.id
    }
])

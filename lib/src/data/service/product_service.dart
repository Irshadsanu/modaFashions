import 'package:modafashion/src/data/model/inventory.dart';
import 'package:modafashion/src/data/model/product.dart';

class ProductService {
  List<Product> listProduct = [
    Product(
        id: "1",
        title: "PLAIDED CHESS",
        description: "This A-line dress features a unique style with a collar neck shrug and inner boat neck. The shrug has above elbow sleeves, while the inner is sleeveless. The fitted and pleated waist flares into a flared hem. The black and white design incorporates checks and solids, with button surface styling, adding a touch of sophistication. The dress is fully lined and comes in two lengths: 47 inches for the shrug and 44 inches for the inner.\nSIZE & FIT\nRegular Fit\nThe model height 5'4 wearing a size XS\nSTYLE SPECIFICATION\nShape: A-line\nNeck: Collar neck(Shrug);Boat neck ( inner)",
        price: 2999.000,
        amountProduct: 10,
        createAt: "10/10/2021",
        isLike: false,
        urlImage: [
          // 'https://img101.urbanic.com/v1/goods-pic/0f8ce3efe7084f9597e32d0bdf4dfd18UR_w1000_q90.webp',
          // 'https://.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/29_5c5b23be-48b1-4bbe-aac3-b5d91620242e_800x.jpg?v=1680311481',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/23_cfbc2c3f-5b77-4e7a-887f-9428ac38efb8_800x.jpg?v=1680310942',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/28_d3a9613d-3815-4c72-bd82-8416e31a3a78_800x.jpg?v=1680311481'
        ],
        category: "3499",
        inventory: [
          Inventory(
            id: "1",
            color: "Vàng",
            size: "M",
            stockQuantity: 10,
          ),
          Inventory(
            id: "2",
            color: "Trắng",
            size: "S",
            stockQuantity: 2,
          ),
          Inventory(
            id: "4",
            color: "Đen",
            size: "S",
            stockQuantity: 1,
          ),
          Inventory(
            id: "5",
            color: "Đỏ",
            size: "XL",
            stockQuantity: 5,
          ),
        ]),
    Product(
        id: "2",
        title: "PINK LAYERED DRESS",
        description: "A stunning thulian pink dress in beautiful white dotted print featuring a double layered waist, pleated yoke, flutters at the yoke & waist, net detailing at the sleeves and hem, and puffed sleeves\n"
            "Pair it up with a matching Scrunchie by choosing (With Scrunchie) as the (Pair-Up) option.\n"
            "SIZE & FIT\nRegular Fit\nThe model (height 5'4) is wearing a size XS\n"
            "STYLE SPECIFICATION\nShape: A-line\nNeck: Boat Neck\nSleeve Length: Short Sleeve (above elbow)\nSleeve Style: Puffed sleeves with a fitted end\nWaist: Double layered, gathered with flutter detailing\nHem: Flared\nLength: Midi (46)",
        price: 2899.000,
        amountProduct: 2,
        createAt: "21/2/2020",
        isLike: false,
        urlImage: [
          'https://cdn.shopify.com/s/files/1/1286/5615/products/20221003_060025_0010_800x.png?v=1664940685',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/20221003_060025_0004_800x.png?v=1664940685',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/20221003_060025_0006_800x.png?v=1664940685'

        ],
        category: "3299",
        inventory: [
          Inventory(
            id: "8",
            color: "Xanh",
            size: "M",
            stockQuantity: 10,
          ),
          Inventory(
            id: "9",
            color: "Tím",
            size: "XL",
            stockQuantity: 2,
          ),
        ]),
    Product(
        id: "3",
        title: "MIDNIGHT MAGIC",
        description: "Create an exceptional look with this all black quirky number. The fit and flare silhouette is accentuated by a wide neck and cute gathered sleeves that measure 8. It comes with a normal waist, and a flared hem. The dress is 50 in length and features a crush pattern. It has a lining only on the yoke.\n"
            "SIZE & FIT\nRegular Fit\nThe model (height 5'4) is wearing a size XS\n"
            "STYLE SPECIFICATION\nShape: Fit and flare\nNeck: Wide neck\nSleeve length: 8”\nsleeve style: Gathered\nwaist: Normal\nHem: Flared\nLength: 50",
        price: 1999.000,
        amountProduct: 2,
        createAt: "10/10/2012",
        isLike: false,
        urlImage: [
          'https://cdn.shopify.com/s/files/1/1286/5615/products/12_7be19e2e-05db-48ec-80e2-370a101422b8_800x.jpg?v=1678215894',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/1_379f33b2-b553-47d4-95c9-c2179238d1bc_800x.jpg?v=1678239730',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/5_25eba851-99fc-4b0a-b9b1-30475aa22098_800x.jpg?v=1678215894'
        ],
        category: "2599"),
    Product(
        id: "4",
        title: "PANACHE DRESS",
        description: "A stunning black dress in assorted motif prints with a wide printed band at the waist. It features a sweetheart neckline, super-puffed sleeves, fitted & pleated waistline, a flared hem, and button detailing all the way down to the hem\n"
            "Pair it up with a matching scrunchie by choosing With Scrunchie as the Pair-Up option.\n"
            "SIZE & FIT\nRegular Fit\nThe model (height 5'4) is wearing a size S/n"
            "STYLE SPECIFICATION\nShape: A-line\nNeck: Sweetheart Neck\nSleeve Length: Short Sleeve (Elbow-length)\nSleeve Style: Puffed Sleeves\nWaist: Fitted & Pleated\nHem: Flared\nLength: Midi (45)",
        price: 2199.000,
        amountProduct: 10,
        createAt: "10/10/2029",
        isLike: false,
        urlImage: [
          'https://cdn.shopify.com/s/files/1/1286/5615/products/2_1fd3f57f-ea2c-4b8c-81f8-b3e4fa095030_800x.png?v=1661915402',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/7_b91118c5-e010-40d6-8e1a-a766cb64870e_800x.png?v=1661915402',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/11_33889da5-6923-4415-b291-6416faad27af_800x.png?v=1661915076'
        ],
        category: "2499"),
    Product(
        id: "5",
        title: "CLASSY COLLARED DRESS",
        description: "A classy dress featuring a subdued grey yoke, mauve floral hem, a shirt collar with a keyhole, and masterful waist pleats.",
        price: 1499.000,
        amountProduct: 10,
        createAt: "10/10/2014",
        isLike: false,
        urlImage: [
          'https://cdn.shopify.com/s/files/1/1286/5615/products/8_3_800x.jpg?v=1671249327',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/4_3_800x.jpg?v=1671235131',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/DSC04261_2_800x.jpg?v=1671235131'
        ],
        category: "1899"),
    Product(
        id: "6",
        title: "QUEEN OF HEARTS DRESS",
        description: "A beautiful shirt dress in pink with geometric prints featuring a shirt collar on a solid shoulder panel, button detailing up front, and gathered at the waist. ",
        price: 1199.000,
        amountProduct: 2,
        createAt: "10/10/2011",
        isLike: false,
        urlImage: [
          'https://cdn.shopify.com/s/files/1/1286/5615/products/28_800x.jpg?v=1671036424',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/26_800x.jpg?v=1671036424',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/33_800x.jpg?v=1671036424'
        ],
        category: "1499"),
    Product(
        id: "7",
        title: "PURPLE PAMELA ",
        description: "This beautiful purple ethnic-inspired outfit features a straight-shaped top and pants, with a mandarin collar and 18 gathered sleeves. The waist is elastic for a comfortable and flexible fit, while the hem is a classic normal style. The top measures 23 in length, while the pants reach 37. The fabric is adorned with a lovely ethnic motif and stripe pattern. The pants are lined, ensuring a smooth and comfortable fit. This outfit is perfect for any occasion where you want to feel comfortable, stylish, and culturally connected. ",
        price: 1399.000,
        amountProduct: 10,
        createAt: "24/02/2012",
        isLike: false,
        urlImage: [
          'https://cdn.shopify.com/s/files/1/1286/5615/products/27_57ecc528-8502-4fa5-8ad4-5c7dc4a4e5fa_800x.jpg?v=1678930192',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/21_021a6c4c-70c0-4aaa-82b4-549a75553323_800x.jpg?v=1678930192',
          'https://cdn.shopify.com/s/files/1/1286/5615/products/16_d2012518-4235-48bd-92ee-03f309fd05fd_800x.jpg?v=1678930192'
        ],
        category: "1999"),
  ];

  Future<List<Product>> getListProduct() async {
    return listProduct;
  }

// Future likeProduct(int isLike) async {
//   if (isLike == 0) {
//     isLike = 1;
//
//   }
// }
}

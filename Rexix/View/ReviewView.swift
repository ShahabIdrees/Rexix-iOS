

//Code to add a new document into fireStore
//        let db = Firestore.firestore()
//        var ref: DocumentReference? = nil
//        ref = db.collection("Reviews").addDocument(data: ["title" : "Awesome 👏 👏👏👏👏",
//                                                          "description" : "As good as it gets",
//                                                          "rating": 4.9,
//                                                          "productID" : ""
//                                                         ]){ err in
//            if let err = err {
//                print("Error adding document: \(err)")
//            } else {
//                print("Document added with ID: \(ref!.documentID)")
//            }
//        }




//var ref: DocumentReference? = nil
//ref = db.collection("Reviews").addDocument(data: ["title" : "Excellent Product!",
//                                                         "description" : "I am extremely satisfied with this product. It exceeded my expectations in terms of quality and performance.",
//                                                         "rating": 4.9,
//                                                         "productID" : ""
//                                                        ]){ err in
//           if let err = err {
//               print("Error adding document: \(err)")
//           } else {
//               print("Document added with ID: \(ref!.documentID)")
//           }
//       }
//
//
//db.collection("Reviews").addDocument(data: ["title" : "Average Product",
//                                                         "description" : "It's an okay product for the price. Not exceptional, but gets the job done.",
//                                            "rating": 3.2,
//                                                         "productID" : ""
//                                                        ]){ err in
//           if let err = err {
//               print("Error adding document: \(err)")
//           } else {
//               print("Document added with ID: \(ref!.documentID)")
//           }
//       }
//
//
//db.collection("Reviews").addDocument(data: ["title": "Poor Quality",
//                                            "description": "I was disappointed with the product's quality. It started falling apart after a few uses.",
//                                            "rating": 2.0,
//                                            "productID": ""]){ err in
//           if let err = err {
//               print("Error adding document: \(err)")
//           } else {
//               print("Document added with ID: \(ref!.documentID)")
//           }
//       }
//
//db.collection("Reviews").addDocument(data: ["title": "Great Value for Money",
//                                            "description": "This product offers excellent value for its price. I was pleasantly surprised by its features and durability.",
//                                            "rating": 4.5,
//                                            "productID": ""]){ err in
//           if let err = err {
//               print("Error adding document: \(err)")
//           } else {
//               print("Document added with ID: \(ref!.documentID)")
//           }
//       }
//
//db.collection("Reviews").addDocument(data: ["title": "Not Worth the Hype",
//                                            "description": "I bought this product based on the hype, but it didn't live up to my expectations. Average performance and overpriced.",
//                                            "rating": 2.8,
//                                            "productID": ""]){ err in
//           if let err = err {
//               print("Error adding document: \(err)")
//           } else {
//               print("Document added with ID: \(ref!.documentID)")
//           }
//       }
//
//db.collection("Reviews").addDocument(data: ["title": "Outstanding Performance!",
//                                            "description": "I am amazed by how well this product performs. It exceeded my expectations and has become an essential part of my daily routine.",
//                                            "rating": 4.9,
//                                            "productID": ""]){ err in
//           if let err = err {
//               print("Error adding document: \(err)")
//           } else {
//               print("Document added with ID: \(ref!.documentID)")
//           }
//       }
//
//
//
//




//
//
//    private [Review(title: "Awesome 👏 👏👏👏👏", description: "As good as it gets", rating: 4.9, productID: "orEo2nePrieeROEIREREIFCE2W4JQwe9jwjriefjer"),
//                              Review(title: "Great 👏 👏👏👏👏", description: "As good as it gets", rating: 4.9, productID: "orEo2nePrieeROEIREREIFCE2W4JQwe9jwjriefjer"),
//                              Review(title: "Terrible", description: "As good as it gets", rating: 4.9, productID: "orEo2nePrieeROEIREREIFCE2W4JQwe9jwjriefjer"),
//                              Review(title: "Terrific 👏 👏👏👏👏", description: "As good as it gets", rating: 4.9, productID: "orEo2nePrieeROEIREREIFCE2W4JQwe9jwjriefjer"),
//                              Review(title: "Amazing 👏 👏👏👏👏", description: "As good as it gets", rating: 4.9, productID: "orEo2nePrieeROEIREREIFCE2W4JQwe9jwjriefjer"),
//    ]
//


import SwiftUI
import FirebaseFirestore
import Combine

class ReviewViewModel: ObservableObject {
    @Published var reviewList: [Review] = [Review(
        title: "Awesome day at the beach! 🌊☀️",
        description: "Exceptional service! From the moment I entered, the staff's warm welcome set the tone for a delightful experience. The attention to detail and the quality of products exceeded my expectations. A positive atmosphere coupled with impeccable service makes this place a standout. Can't wait to return!",
        rating: 3.8,
        image: "15profront"
    ),Review(
        title: "Awesome day at the beach! 🌊☀️",
        description: "Exceptional service! From the moment I entered, the staff's warm welcome set the tone for a delightful experience. The attention to detail and the quality of products exceeded my expectations. A positive atmosphere coupled with impeccable service makes this place a standout. Can't wait to return!",
        rating: 3.8,
        image: "15proback"
    ),Review(
        title: "Awesome day at the beach! 🌊☀️",
        description: "Exceptional service! From the moment I entered, the staff's warm welcome set the tone for a delightful experience. The attention to detail and the quality of products exceeded my expectations. A positive atmosphere coupled with impeccable service makes this place a standout. Can't wait to return!",
        rating: 3.8,
        image: "15proleft"
    ),Review(
        title: "Awesome day at the beach! 🌊☀️",
        description: "Exceptional service! From the moment I entered, the staff's warm welcome set the tone for a delightful experience. The attention to detail and the quality of products exceeded my expectations. A positive atmosphere coupled with impeccable service makes this place a standout. Can't wait to return!",
        rating: 3.8,
        image: "15proright"
    ),Review(
        title: "Awesome day at the beach! 🌊☀️",
        description: "Exceptional service! From the moment I entered, the staff's warm welcome set the tone for a delightful experience. The attention to detail and the quality of products exceeded my expectations. A positive atmosphere coupled with impeccable service makes this place a standout. Can't wait to return!",
        rating: 3.8,
        image: "15proangled"
    )]
    init() {
            let dummyReview = Review(
                title: "Awesome day at the beach! 🌊☀️",
                description: "Exceptional service! From the moment I entered, the staff's warm welcome set the tone for a delightful experience. The attention to detail and the quality of products exceeded my expectations. A positive atmosphere coupled with impeccable service makes this place a standout. Can't wait to return!",
                rating: 3.8,
                image: "CoverPhoto"
            )
            
        let db = Firestore.firestore()
        
        db.collection("Reviews").addSnapshotListener { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                for document in querySnapshot!.documents {
                    var temp = Review()
                    //temp.id = document.documentID
                    temp.title = document.data()["title"] as? String ?? ""
                    temp.description = document.data()["description"] as? String ?? ""
                    temp.rating = document.data()["rating"] as? Double ?? 0.0
                    temp.userId = document.data()["userId"] as? String ?? ""
                    if let repliesDataArray = document.data()["replies"] as? [[String: Any]] {
                        temp.replies = repliesDataArray.map { replyData in
                            guard
                                let description = replyData["description"] as? String,
                                let likes = replyData["likes"] as? Int,
                                let dislikes = replyData["dislikes"] as? Int,
                                let reviewId = replyData["reviewId"] as? String
                            else {
                                return Reply() // Return a default Reply or handle the error case as needed
                            }
                            
                            let reply = Reply(description: description, reviewId: reviewId, likes: likes, dislikes: dislikes)
                            return reply
                        }
                    } else {
                        temp.replies = []
                    }
                    
                    DispatchQueue.main.async {
                        self.reviewList.append(temp)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)
                        self.reviewList.append(dummyReview)

                    }
                }
            }
        }
    }
}

struct ReviewView: View {
    @ObservedObject var viewModel = ReviewViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.reviewList, id: \.id) { item in
                    NavigationLink(destination: ReviewDetailsView(currentReview: item)) {
                        ReviewItem(review: item).padding(.horizontal, 15)
                    }
                }
            }
            .background(Color.clear)
            .listStyle(PlainListStyle())
            .navigationTitle("Rexix")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}


struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}

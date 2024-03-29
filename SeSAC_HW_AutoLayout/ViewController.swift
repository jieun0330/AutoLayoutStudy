//
//  ViewController.swift
//  SeSAC_HW_AutoLayout
//
//  Created by 박지은 on 1/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var songIcon: UIButton!
    @IBOutlet var song: UILabel!
    @IBOutlet var singer: UILabel!
    @IBOutlet var hide: UIButton!
    @IBOutlet var setting: UIButton!
    @IBOutlet var albumCover: UIImageView!
    @IBOutlet var like: UIButton!
    @IBOutlet var likeNum: UILabel!
    @IBOutlet var radio: UIButton!
    @IBOutlet var lyric: UILabel!
    @IBOutlet var repeatation: UIButton!
    @IBOutlet var random: UIButton!
    @IBOutlet var mediaButton: UIButton!
    @IBOutlet var previous: UIButton!
    @IBOutlet var pause: UIButton!
    @IBOutlet var nextSong: UIButton!
    @IBOutlet var eq: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mark: - 상단
        buttonDesign(songIcon, buttonTitle: "music.note.list")
        song.text = "strawberry moon"
        singer.text = "아이유"
        buttonDesign(hide, buttonTitle: "chevron.down")
        buttonDesign(setting, buttonTitle: "ellipsis")
        //Mark: - 앨범 사진
        albumCover.image = .iu
        //Mark: - 사진 아래 버튼
        buttonDesign(like, buttonTitle: "heart")
        likeNum.text = "101,354"
        radioButton()
        lyricDesign()
        //Mark: - 하단 버튼
        buttonDesign(repeatation, buttonTitle: "repeat")
        buttonDesign(random, buttonTitle: "shuffle")
        buttonDesign(mediaButton, buttonTitle: "text.append")
        buttonDesign(previous, buttonTitle: "backward.end.fill")
        buttonDesign(pause, buttonTitle: "pause.fill")
        buttonDesign(nextSong, buttonTitle: "forward.end.fill")
        buttonDesign(eq, buttonTitle: "airpods.gen3")
    }

    //Mark: - 버튼 디자인
    func buttonDesign(_ button: UIButton, buttonTitle: String) {
        button.tintColor = .white
        button.setImage(UIImage(systemName: buttonTitle), for: .normal)
    }
    
    //Mark: - 유사곡 버튼
    func radioButton() {
        radio.setTitle("유사곡", for: .normal)
        radio.layer.borderColor = UIColor.white.cgColor
        radio.layer.cornerRadius = 8
        radio.layer.borderWidth = 0.5
        radio.setTitleColor(.white, for: .normal)
    }

    //Mark: - 가사 디자인
    func lyricDesign() {
        lyric.text = "달이 익어가니 서둘러 젊은 피야 민들레 한 송이 들고"
        lyric.numberOfLines = 2
        lyric.textAlignment = .center
    }
}


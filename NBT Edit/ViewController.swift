//
//  ViewController.swift
//  NBT Edit
//
//  Created by Brendan Ballon on 10/7/21.
//

import Cocoa
import DataTools
import Gzip
import MinecraftNBT
import NBTKit
import OrderedCollections

class ViewController: NSViewController {
    var structure = NBTStructure()
    var keyArr = Array<Any>()
    var valueArr = Array<Any>()

    @objc dynamic var nbtObj = [String: NSObject]()
    @objc dynamic var levelDat = [String: NSObject]()
    @objc dynamic var tableContents = Array<Any>()
    @objc dynamic var nbtData = [AnyHashable: Any]()
    @objc dynamic var teststrung = Data()

    @IBOutlet var tableView: NSTableView!
    @IBOutlet var treeController: NSTreeController!

    @IBAction func openDocument(_ sender: AnyObject) {
        print("open")

        let fileTypes = ["dat"]
        let openPanel = NSOpenPanel()
        openPanel.canChooseFiles = true
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.allowedFileTypes = fileTypes

        openPanel.beginSheetModal(for: view.window!) { [self] response in
            if response == .OK {
                let selectedPath = openPanel.url!.path
                let data = try! Data(contentsOf: URL(fileURLWithPath: selectedPath))

                do {
                    // decompress nbt file via gzip
                    let gunzip = try data.gunzipped()
                    self.structure = NBTStructure(decompressed: gunzip)
                    // dump contents
                    // print(self.structure)

                    tableView.reloadData()
                    print(structure)

                } catch {
                    print(error.localizedDescription)
                }
            }
            openPanel.close()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        teststrung = structure.tag as! Data
        
        let Hamburger =
            "        (__)\n" +
            "        (xx)\n" +
            " __------\\/\n" +
            "* ||____||\n" +
            " / |    |\\\n"
        print(Hamburger)
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}

extension ViewController: NSTableViewDelegate, NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        structure.tag.contents.count
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
//        let test = Array(nbtObj.keys)
//        let tes = test.flatMap(String($0))
//        let testTwo = Array(nbtObj.values)
//        let fucker = testTwo.map(String.init)
//        //let ugh:[String] = Array(nbtObj.values)
//        //let fuck = testTwo.map {$0 as! String}
        ////        let id = "tags"
//        let cell = tableView.makeView(withIdentifier: .init(rawValue: "tag"), owner: self) as? NSTableCellView
//        let cell2 = tableView.makeView(withIdentifier: .init(rawValue: "value"), owner: self) as? NSTableCellView
//
//
        ////        cell?.textField?.objectValue = test
        ////
        ////        return cell
//
//        if tableColumn?.identifier == .init(rawValue: "tag") {
//            return NSTextField(labelWithString: tes[row])
//        } else {
//            return NSTextField(string: fucker[row])
//        }

        return NSTextField(labelWithString: structure.tag)
    }
}

extension NBTStructure {
}

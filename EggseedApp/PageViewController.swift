//
//  TabViewController.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/23/21.
//

import Cocoa
import SwiftUI
struct PageViewController<Page: View>: NSViewControllerRepresentable {

  
  
    var pages: [Page]
    @Binding var currentPage: Int

//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }

    func makeNSViewController(context: Context) -> NSTabViewController {
        let pageViewController = NSTabViewController()
      for page in pages {
        pageViewController.addChild(NSHostingController(rootView: page))
      }
      pageViewController.tabStyle = .unspecified
      pageViewController.transitionOptions = .slideLeft
      pageViewController.tabView.tabPosition = .none
      pageViewController.tabView.tabViewType = .noTabsNoBorder
        return pageViewController
    }
  
  func updateNSViewController(_ nsViewController: NSTabViewController, context: Context) {
    nsViewController.selectedTabViewItemIndex = currentPage
  }
  

//    func updateNSViewController(_ tabViewController: NSTabViewController, context: Context) {
////        pageViewController.setViewControllers(
////            [context.coordinator.controllers[currentPage]], direction: .forward, animated: true)
//      tabViewController.selectedTabViewItemIndex = currentPage
//    }

//    class Coordinator: NSObject {
//        var parent: PageViewController
//        //var controllers = [NSViewController]()
//
//        init(_ pageViewController: PageViewController) {
//            parent = pageViewController
//            pare
//            controllers = parent.pages.map { NSHostingController(rootView: $0) }
//        }
//
//        func pageViewController(
//            _ pageViewController: UIPageViewController,
//            viewControllerBefore viewController: UIViewController) -> UIViewController? {
//            guard let index = controllers.firstIndex(of: viewController) else {
//                return nil
//            }
//            if index == 0 {
//                return controllers.last
//            }
//            return controllers[index - 1]
//        }
//
//        func pageViewController(
//            _ pageViewController: UIPageViewController,
//            viewControllerAfter viewController: UIViewController) -> UIViewController? {
//            guard let index = controllers.firstIndex(of: viewController) else {
//                return nil
//            }
//            if index + 1 == controllers.count {
//                return controllers.first
//            }
//            return controllers[index + 1]
//        }
//
//        func pageViewController(
//            _ pageViewController: UIPageViewController,
//            didFinishAnimating finished: Bool,
//            previousViewControllers: [UIViewController],
//            transitionCompleted completed: Bool) {
//            if completed,
//               let visibleViewController = pageViewController.viewControllers?.first,
//               let index = controllers.firstIndex(of: visibleViewController) {
//                parent.currentPage = index
//            }
//        }
//    }
}

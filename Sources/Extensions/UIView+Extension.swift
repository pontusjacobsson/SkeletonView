// Copyright © 2018 SkeletonView. All rights reserved.

import UIKit

// codebeat:disable[TOO_MANY_IVARS]
enum ViewAssociatedKeys {
    static var skeletonable = "skeletonable"
    static var status = "status"
    static var skeletonLayer = "layer"
    static var flowDelegate = "flowDelegate"
    static var isSkeletonAnimated = "isSkeletonAnimated"
    static var viewState = "viewState"
    static var labelViewState = "labelViewState"
    static var imageViewState = "imageViewState"
    static var currentSkeletonConfig = "currentSkeletonConfig"
}
// codebeat:enable[TOO_MANY_IVARS]

extension UIView {

    enum Status {
        case on
        case off
    }

    var flowDelegate: SkeletonFlowDelegate? {
        get { return ao_get(pkey: &ViewAssociatedKeys.flowDelegate) as? SkeletonFlowDelegate }
        set { ao_setOptional(newValue, pkey: &ViewAssociatedKeys.flowDelegate) }
    }

    var skeletonLayer: SkeletonLayer? {
        get { return ao_get(pkey: &ViewAssociatedKeys.skeletonLayer) as? SkeletonLayer }
        set { ao_setOptional(newValue, pkey: &ViewAssociatedKeys.skeletonLayer) }
    }

    var currentSkeletonConfig: SkeletonConfig? {
        get { return ao_get(pkey: &ViewAssociatedKeys.currentSkeletonConfig) as? SkeletonConfig }
        set { ao_setOptional(newValue, pkey: &ViewAssociatedKeys.currentSkeletonConfig) }
    }

    var status: Status! {
        get { return ao_get(pkey: &ViewAssociatedKeys.status) as? Status ?? .off }
        set { ao_set(newValue ?? .off, pkey: &ViewAssociatedKeys.status) }
    }

    var skeletonIsAnimated: Bool! {
        get { return ao_get(pkey: &ViewAssociatedKeys.isSkeletonAnimated) as? Bool ?? false }
        set { ao_set(newValue ?? false, pkey: &ViewAssociatedKeys.isSkeletonAnimated) }
    }
}

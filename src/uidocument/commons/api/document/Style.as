/* Automatically generated by IntelliJ IDEA from Java, revision needed before production use */
/*
 * Copyright (c) 2008, Vaclav Slovacek. All Rights Reserved.
 *
 * Product: UIProtocol Java
 *
 * This source-code is released under following license:
 * - no release outside i2home project is allowed
 * - this copyright notice must be placed unmodified in every file derived from this source code
 */


package uidocument.commons.api.document {

/**
 * Represents single style that can be applied on a component.
 */
public class Style {

    private var model:String;

    public function Style(model:String) {
        this.model = model;
    }

    public function getModel():String {
        return model;
    }

}
}
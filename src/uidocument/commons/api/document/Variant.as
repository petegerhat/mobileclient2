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

//@todo persistent properties
//@todo abstract class

package uidocument.commons.api.document {

import uidocument.commons.api.document.property.*;

/**
 * Class describing single model variant that is used in the interface.
 */
public class Variant extends Property {

    private var language:String;

    public function setBinding(property:IProperty, component:IUpdatable):void {
        getPropertyByName(property.getValue().split(":")[1]).addListener(property, component);
    }

    public function Variant():void {
        super();
        language = null;
    }


    /**
     * Tells whether the suplied variant is compatible with the specified one.
     *
     * @param variant that should be compared with this variant
     * @return true if the variant is compatible with the provided Variant, otherwise false
     */
    public function isCompatible(variant:Variant):Boolean {
        return false;
    }

}
}
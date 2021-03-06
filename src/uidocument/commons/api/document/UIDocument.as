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

// @todo constructor
// @todo setBinding == null
package uidocument.commons.api.document {

import uidocument.commons.api.document.property.IProperty;
import writer.UIDocumentWriter;

/**
 * ProtocolDocument represents single message exchanged between client and server. This class can be used
 * for both creating and reading a single document. It is not intended to be used as general manipulator for
 * the document content (as for example DOM frameworks).
 */
public class UIDocument {

    private var interfaces:Vector.<Interface>;
    private var updates:Vector.<ModelUpdate>;
    private var events:Vector.<Event>;
    private var actions:Vector.<Action>;
    private var writer:UIDocumentWriter;

    private static var instance:UIDocument;

    public function UIDocument():void {
        interfaces = new Vector.<Interface>;
        updates = new Vector.<ModelUpdate>;
        events = new Vector.<Event>;
        actions = new Vector.<Action>;
        instance = this;
        trace("UIDocument created");
    }

    public static function getInstance():UIDocument {
        if (instance == null) {
            instance = new UIDocument();
        }
        return instance;
    }

    public function setBinding(property:IProperty,component:IUpdatable):void {
        findModel(property.getValue().split(":")[0]).setBinding(property,component);
    }

    /**
     * Adds new interfaces into the document.
     *
     * @param iface
     */
    public function addInterface(iface:Interface):void {
        interfaces.push(iface);
    }

    /**
     * Adds new model updates to the document.
     *
     * @param update
     */
    public function addModelUpdate(update:ModelUpdate):void {
        for (var i:Number = 0; i < updates.length; i++) {
            if (updates[i].getId()==update.getId()){
                updates[i].update(update);
                return;
            }
        }
        updates.push(update);
    }

    /**
     * Adds new events to the document.
     *
     * @param event
     */
    public function addEvent(event:Event):void {
        interfaces.push(event);
    }

    /**
     * Adds new actions to the document.
     *
     * @param action
     */
    public function addAction(action:Action):void {
        actions.push(action);
    }

    public function findAction(action:String):Action {
        for (var i:Number = 0; i < actions.length; i++) {
            if (actions[i].getId() == action) {
                return actions[i];
            }
        }
        return null;
    }

    public function findEvent(event:String):Event {
        for (var i:Number = 0; i < events.length; i++) {
            if (events[i].getId() == event) {
                return events[i];
            }
        }
        return null;
    }

    public function findInterface(iface:String):Interface {
        for (var i:Number = 0; i < interfaces.length; i++) {
            if (interfaces[i].getId() == iface)
                return interfaces[i];
        }
        return null;
    }

    public function findModel(model:String):ModelUpdate {
        for (var i:Number = 0; i < updates.length; i++) {
            if (updates[i].getId() == model)
                return updates[i];
        }
        return null;
    }

    /**
     * Retrieves node contaning events.
     *
     * @return node contaning events
     */
    public function getEvents():Vector.<Event> {
        return events;
    }

    /**
     * Retrieves node containing interfaces.
     *
     * @return node containing interfaces
     */
    public function getInterfaces():Vector.<Interface> {
        return interfaces;
    }

    /**
     * Retrieves node containing models.
     *
     * @return node containing models
     */
    public function getModelUpdates():Vector.<ModelUpdate> {
        return updates;
    }

    /**
     * Retrieves actions contained in the document.
     *
     * @return actions contained in the current document
     */
    public function getActions():Vector.<Action> {
        return actions;
    }
    /*
    public function setWriter(writer:UIDocumentWriter):void {
        this.writer = writer;
    }
    */
}
}
